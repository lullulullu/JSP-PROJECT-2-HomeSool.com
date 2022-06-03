package com.sool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.fileTest.FileTestDTO;

public class SoolProdDAO {

	private Connection conn = null;

	public SoolProdDAO(Connection conn) {
		this.conn = conn;
	}

	//시퀀스 사용
	//전체 데이터 개수
	public int getDataCount() {

		int totalCount = 0;

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			sql = "select nvl(count(*), 0) from product";

			pstmt = conn.prepareStatement(sql);

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
	//파일 입력
	public int insertData(SoolProdDTO dto) {

		int result = 0;
		PreparedStatement pstmt = null;
		String sql;

		try {
			sql = "insert into product (prod_no, prod_name, prod_price, prod_quan, ";
			sql+= "prod_oImg, prod_sImg, prod_cate) ";
			sql+= "values (seq_prod.nextval,?,?,?,?,?,?)";

			pstmt = conn.prepareStatement(sql);	

			pstmt.setString(1, dto.getProd_name());
			pstmt.setInt(2, dto.getProd_price());
			pstmt.setInt(3, dto.getProd_quan());
			pstmt.setString(4, dto.getProd_oImg());
			pstmt.setString(5, dto.getProd_sImg());
			pstmt.setString(6, dto.getProd_cate());


			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return result;

	}

	//데이터 리스트에 가져오기
	public List<SoolProdDTO> getLists(int start, int end) {

		List<SoolProdDTO> lists = new ArrayList<SoolProdDTO>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {


			sql = "select * from ("
					+ "select rownum rnum, data.* from ("
					+ "select prod_no, prod_name, prod_price, prod_quan,"
					+ "prod_oImg, prod_sImg, prod_cate "
					+ "from product order by prod_no desc) data) "
					+ "where rnum >=? and rnum <=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);

			rs = pstmt.executeQuery();

			while(rs.next()) {

				SoolProdDTO dto = new SoolProdDTO();

				dto.setProd_no(rs.getInt("prod_no"));
				dto.setProd_name(rs.getString("prod_name"));
				dto.setProd_price(rs.getInt("prod_price"));
				dto.setProd_quan(rs.getInt("prod_quan"));
				dto.setProd_oImg(rs.getString("prod_oImg"));
				dto.setProd_sImg(rs.getString("prod_sImg"));
				dto.setProd_cate(rs.getString("prod_cate"));

				lists.add(dto);
			}

			rs.close();
			pstmt.close();


		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return lists;
	}

	//번호로 데이터 불러오기
	public SoolProdDTO getReadData(int prod_no) {

		SoolProdDTO dto = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			sql = "select prod_no, prod_name, prod_price, prod_quan,"
					+ "prod_oImg, prod_sImg, prod_cate "
					+ "from product where prod_no=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, prod_no);

			rs = pstmt.executeQuery();

			if(rs.next()) {

				dto = new SoolProdDTO();

				dto.setProd_no(rs.getInt("prod_no"));
				dto.setProd_name(rs.getString("prod_name"));
				dto.setProd_price(rs.getInt("prod_price"));
				dto.setProd_quan(rs.getInt("prod_quan"));
				dto.setProd_oImg(rs.getString("prod_oImg"));
				dto.setProd_sImg(rs.getString("prod_sImg"));
				dto.setProd_cate(rs.getString("prod_cate"));

			}

			rs.close();
			pstmt.close();


		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return dto;
	}

	//입력번호로 데이터 지우기
	public int deleteData(int prod_no) {

		int result = 0;
		PreparedStatement pstmt = null;
		String sql;

		try {
			sql = "delete product where prod_no=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, prod_no);

			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return result;
	}





	//상품 카테고리 리스트에 가져오기
	public List<SoolProdDTO> getCateLists(String prod_cate, int start, int end) {

		List<SoolProdDTO> lists = new ArrayList<SoolProdDTO>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {


			sql = "select * from ("
					+ "select rownum rnum, data.* from ("
					+ "select * from product where prod_cate=? order by prod_no desc) data) "
					+ "where rnum >=? and rnum <=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, prod_cate);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);

			rs = pstmt.executeQuery();

			while(rs.next()) {

				SoolProdDTO dto = new SoolProdDTO();

				dto.setProd_no(rs.getInt("prod_no"));
				dto.setProd_name(rs.getString("prod_name"));
				dto.setProd_price(rs.getInt("prod_price"));
				dto.setProd_quan(rs.getInt("prod_quan"));
				dto.setProd_oImg(rs.getString("prod_oImg"));
				dto.setProd_sImg(rs.getString("prod_sImg"));
				dto.setProd_cate(rs.getString("prod_cate"));

				lists.add(dto);
			}

			rs.close();
			pstmt.close();


		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return lists;
	}







}




