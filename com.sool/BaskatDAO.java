package com.sool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BaskatDAO {
	
	private Connection conn = null;
	
	public BaskatDAO(Connection conn) {
		this.conn = conn;
	}
	
	//장바구니 총상품 개수(사용자별)
	public int getTotalItemCount(String user_id) {
		
		int maxNum = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select sum(prod_quan) basket cart where user_id = ? " ;
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				maxNum = rs.getInt(1);
			}
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return maxNum;
	}
	
	//장바구니 총상품개수(주문했을때 1표시. 데이터가 넘어갔을때, 받아준다.) 
	//이거 헷깔리니까 표시. 반환값을 ..... 발리디티로 보내야 하는거 아닌가 고민중.... 그런데... 모르겠어
	public int getTotalItemCountyes(String user_id){
		
		int maxNum = 0;
		PreparedStatement pstmt =null;
		ResultSet rs = null;
		String sql;
		
		try {
			sql = "select sum(prod_quan) from basket where userId = ? and bas_vali='1'" ;
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				maxNum = rs.getInt(1);
			}
			rs.close();
			pstmt.close();
		
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return maxNum;
	}
	
	//장바구니 총상품개수(동일상품)
		public int getBasketItemCount(String user_id, int prod_no){
			
			int maxNum = 0;
			PreparedStatement pstmt =null;
			ResultSet rs = null;
			String sql;
			
			try {
				sql = "select prod_quan from basket where user_id = ? and prod_no=? and bas_vali='1'" ;
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, user_id);
				pstmt.setInt(2, prod_no);
				rs = pstmt.executeQuery();
				
				if(rs.next()){
					maxNum = rs.getInt(1);
				}
				rs.close();
				pstmt.close();
			
			} catch (Exception e) {
				System.out.println(e.toString());
			}
			return maxNum;
		}
		
		
		//장바구니 총액
		public int getTotalItemPrice(String user_id){
			
			int maxNum = 0;
			PreparedStatement pstmt =null;
			ResultSet rs = null;
			String sql;
			
			try {
				sql = "select sum(prod_quan*prod_pric) from product where user_id = ? and bas_vali='1'" ;
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, user_id);
				rs = pstmt.executeQuery();
				
				if(rs.next()){
					maxNum = rs.getInt(1);
				}
				rs.close();
				pstmt.close();
			
			} catch (Exception e) {
				System.out.println(e.toString());
			}
			return maxNum;
		}
		
		//장바구니 상품추가
		public void insertBasketItem(BasketDTO dto) {

			PreparedStatement pstmt = null;
			String sql;

			try {
				sql = "insert into product(user_id,prod_no,prod_quan,prod_price) ";
				sql += "values (?,?,?,?)";
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, dto.getUser_id());
				pstmt.setInt(2, dto.getProd_no());
				pstmt.setInt(3, dto.getProd_quan());
				pstmt.setInt(4, dto.getProd_price());

				pstmt.executeUpdate();
				pstmt.close();

			} catch (Exception e) {
				System.out.println(e.toString());
			}
		}
		
		//장바구니 조회
		public List<BasketDTO> getReadData(String user_id) {

			List<BasketDTO> lists = new ArrayList<BasketDTO>();
			BasketDTO dto = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql;

			try {
				
				//****************************
				sql = "select a.bas_no,a.user_id,a.prod_no,c.prod_name,a.bas_quan,c.prod_price, (a.bas_quan*c.prod_price) TotalPrice ";
				sql += "from basket a, users b, product c where a.user_id = b.user_id and a.prod_no = c.prod_no";
				sql += "and a.user_id=? order by a.bas_num";

				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, user_id);

				rs = pstmt.executeQuery();

				while (rs.next()) {
					dto = new BasketDTO();
					dto.setBas_no(rs.getInt("bas_no"));
					dto.setUser_id(rs.getString("user_id"));
					dto.setProd_no(rs.getInt("prod_no"));
					dto.setProd_quan(rs.getInt("prod_quan"));
					dto.setBas_vali(rs.getInt("bas_vali"));
					dto.setProd_price(rs.getInt("prod_price"));
					dto.setProd_name(rs.getInt("prod_name"));
					
					
					lists.add(dto);
				}
				rs.close();
				pstmt.close();

			} catch (Exception e) {
				System.out.println(e.toString());
			}
			return lists;
		}
		
		//장바구니 아이템 삭제
		public int deleteBasketItem(int prod_no, String user_id) {
			
			//단일상품옵션삭제시 productId
			int result = 0;
			PreparedStatement pstmt = null;
			String sql;

			try {
				sql= "delete basket where prod_no=? and user_id = ? ";
				
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, prod_no);
				pstmt.setString(2, user_id);
				result = pstmt.executeUpdate();
				pstmt.close();
				
			} catch (Exception e) {
				System.out.println(e.toString());
			}
			return result;
		}
		
		//주문완료 후 장바구니 아이템 삭제
		public int deleteBasketItem(String user_id) {
			
			//주문완료시 userId
			int result = 0;
			PreparedStatement pstmt = null;
			String sql;

			try {
				sql= "delete basket where user_id = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, user_id);
				result = pstmt.executeUpdate();
				pstmt.close();
				
			} catch (Exception e) {
				System.out.println(e.toString());
			}
			return result;
		}
		
		//중복아이템 장바구니 추가
		public int updateBasket(BasketDTO dto) {
			
			int result = 0;
			PreparedStatement pstmt = null;
			String sql;

			try {
				sql= "update basket set prod_quan=? where user_id = ? and prod_no = ?";
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, dto.getProd_quan());//수량수정
				pstmt.setString(2, dto.getUser_id());
				pstmt.setInt(3, dto.getProd_no());
				result = pstmt.executeUpdate();
				pstmt.close();
				
			} catch (Exception e) {
				System.out.println(e.toString());
			}
			return result;
		}
		
		/*//데이터를 넣는걸 다시 만들어줘야하나
		public BasketDTO setUpdateData(int prod_no, String use_id){
			
			BasketDTO dto = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql;
			try {
				
				sql = "update basket set prod_quan=?,prod_price=? ";
				sql += "where prod_no = ? and user_id = ? ";
				
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, prod_no);
				pstmt.setString(2, user_id);
				rs = pstmt.executeQuery();
				
				if(rs.next()){
					dto = new cartDTO();
					dto.setProd_no(rs.getInt("prod_no"));
					dto.setProd_price(rs.getInt("prod_price"));
					//dto.setProductId(rs.getInt("productId"));
					//dto.setPrice(rs.getInt("price"));
				}
				
				rs.close();
				pstmt.close();
			
			} catch (Exception e) {
				System.out.println(e.toString());
			}
			return dto;
		}*/
		
		//장바구니 동일상품 등록여부검색
		public int searchBeforeProductId(int prod_no, String user_id) {
			
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql;
			int result=0;
			
			try {
				sql = "select count(*) ";
				sql += "from basket where prod_id=? and user_id=? ";

				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, prod_no);
				pstmt.setString(2, user_id);
				
				rs = pstmt.executeQuery();

				if (rs.next()) {
					result = rs.getInt(1);
				}
				
				rs.close();
				pstmt.close();

			} catch (Exception e) {
				System.out.println(e.toString());
			}
			return result;
		}
		
		//주문하지않음 bas_vali = '2'
		public void changeOrderSelectNo(int prod_no, String user_id){
			
			int result = 0;
			PreparedStatement pstmt = null;
			String sql;
			
			try {
				
				sql = "update basket set bas_valie='2' where prod_no=? and user_id=?"; 
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, prod_no);
				pstmt.setString(2, user_id);

				result = pstmt.executeUpdate();
				
			} catch (Exception e) {
				System.out.println(e.toString());
			}
		}
		
		//주문진행 bas_vali = '1'
		public void changeOrderSelectYes(int prod_no, String user_id){
			
			int result = 0;
			PreparedStatement pstmt = null;
			String sql;
			
			try {
				
				sql = "update cart set orderSelect='yes' where productId=? and userId=?"; 
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, prod_no);
				pstmt.setString(2, user_id);

				result = pstmt.executeUpdate();
				
			} catch (Exception e) {
				System.out.println(e.toString());
			}
		}
	}