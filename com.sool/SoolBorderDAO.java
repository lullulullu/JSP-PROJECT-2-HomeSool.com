package com.sool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SoolBorderDAO {

	private Connection conn;
	
	public SoolBorderDAO(Connection conn) {
		this.conn=conn;
	}
	
	//num의 최대값
	public int getMaxNum() {
		
		int maxNum = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select nvl(max(bor_no),0) from border"; 
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				maxNum = rs.getInt(1); 
			}
			
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return maxNum;
	}
	
	//입력 
		public int insertData(SoolBorderDTO dto) {   
			
			int result = 0;
			PreparedStatement pstmt = null;
			String sql;
			
			try {
				
				sql = "insert into border (bor_no, bor_subject, user_id, bor_date, bor_content, bor_cate) "
						+ "values (seq_bor.nextval,?,?,sysdate,?,?)"; 
				
				pstmt = conn.prepareStatement(sql);
				
				/*pstmt.setInt(1, dto.getBor_no());*/
				pstmt.setString(1, dto.getBor_subject());
				pstmt.setString(2, dto.getUser_id());
				pstmt.setString(3, dto.getBor_content());
				pstmt.setString(4, dto.getBor_cate());
				
				result = pstmt.executeUpdate();
				
				pstmt.close();
				
			} catch (Exception e) {
				System.out.println(e.toString());
			}
			return result;
			
		}
	
		//전체 데이터 갯수 구하기 
		public int getDataCount(String searchKey, String searchValue) {
			
			int  totalCount = 0;
			
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql;
			
			try {
				
				searchValue = "%" + searchValue + "%";  
				
				sql = "select nvl(count(*),0) from border ";
				sql+= "where "+searchKey+" like ?";   
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, searchValue);
				
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					totalCount = rs.getInt(1);
				}
				rs.close();
				pstmt.close();
				
			} catch (Exception e) {
				System.out.println(e.toString());
			}
			return totalCount;
			
		}
		
		//전체 데이터 가져오기                       
		public List<SoolBorderDTO> getLists(int start,int end, String searchKey, String searchValue ){
			
			List<SoolBorderDTO> lists = new ArrayList<SoolBorderDTO>();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql;
			
			try {
				
				
				searchValue = "%" + searchValue + "%";
				
				sql = "select * from (";
				sql+= "select rownum rnum, data.* from (";
				sql+= "select bor_no,user_id,bor_subject,";
				sql+= "to_char(bor_date,'YYYY-MM-DD') bor_date, bor_cate ";
				sql+= "from border where " +searchKey+ " like ? ";
				sql+= "order by bor_no desc) data) ";
				sql+= "where rnum>=? and rnum<=?";
				
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, searchValue);
				pstmt.setInt(2, start);
				pstmt.setInt(3, end);
				
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					
					SoolBorderDTO dto = new SoolBorderDTO();
					dto.setBor_no(rs.getInt("bor_no"));
					dto.setUser_id(rs.getString("user_id"));
					dto.setBor_subject(rs.getString("bor_subject"));
					dto.setBor_date(rs.getString("bor_date"));
					dto.setBor_cate(rs.getString("bor_cate"));
					/*dto.setBor_content(rs.getString("bor_content"));*/
					
					lists.add(dto);
				}
				rs.close();
				pstmt.close();
				
			} catch (Exception e) {
				System.out.println(e.toString());
			}
			return lists;
		}
		
		//num으로 조회한 한 개의 데이터
				public SoolBorderDTO getReadData(int bor_no){
					
					SoolBorderDTO dto = null;
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					String sql;
					
					try {

						sql= "select bor_no,user_id,bor_subject,bor_date,bor_content,bor_cate ";
						sql+= "from border where bor_no=?";

						
						pstmt = conn.prepareStatement(sql);
						
						pstmt.setInt(1, bor_no);
						
						rs = pstmt.executeQuery();
						
						if(rs.next()) {
							
							dto = new SoolBorderDTO();
							dto.setBor_no(rs.getInt("bor_no"));
							dto.setUser_id(rs.getString("user_id"));
							dto.setBor_subject(rs.getString("bor_subject"));
							dto.setBor_date(rs.getString("bor_date"));
							dto.setBor_cate(rs.getString("bor_cate"));
							dto.setBor_content(rs.getString("bor_content"));
							
						}
						rs.close();
						pstmt.close();
						
					} catch (Exception e) {
						System.out.println(e.toString());
					}
					return dto;
				}
				
				//수정
				public int updateData(SoolBorderDTO dto) {
					
					int result = 0;
					PreparedStatement pstmt = null;
					String sql;
					
					try {
						
						
						sql = "update boder set bor_subject=?,bor_content=? "
								+ "where bor_no=?";
						
						pstmt = conn.prepareStatement(sql);
						
						pstmt.setString(1, dto.getBor_subject());
						pstmt.setString(2, dto.getBor_content());
						pstmt.setInt(3, dto.getBor_no());
						
						result = pstmt.executeUpdate();
						
						pstmt.close();
						
					} catch (Exception e) {
						System.out.println(e.toString());
					}
					return result;
					
				}
				
				//삭제 
				
				public int deleteData(int user_id) {
					
					int result = 0;
					PreparedStatement pstmt = null;
					String sql;
					
					try {
						
						sql ="delete border where user_id=?";
						
						pstmt = conn.prepareStatement(sql);
						
						pstmt.setInt(1, user_id);
						
						result = pstmt.executeUpdate();
						
						pstmt.close();
						
					} catch (Exception e) {
						System.out.println(e.toString());
					}
					return result;
				}
				
}
