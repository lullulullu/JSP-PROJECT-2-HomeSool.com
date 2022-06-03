package com.sool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.board.BoardDTO;
import com.join.MemberDTO;

public class SoolUserDAO {
	
	private Connection conn;
	
	public SoolUserDAO(Connection conn) {
		this.conn = conn;
	}

	//회원가입 파트
	//입력
		public int insertData(SoolUserDTO dto) {
			
			int result = 0;
			
			PreparedStatement pstmt = null;
			String sql;
			
			try {
				
				sql = "insert into users (user_id,user_pwd,user_nick,user_name,user_tel,";
				sql += "user_email,user_addr1,user_addr2,user_gender,user_bir1,user_bir2,";
				sql += "user_bir3,user_rid,user_date) ";
				sql	+= "values (?,?,?,?,?,?,?,?,?,?,?,?,?,sysdate)";
				
				pstmt = conn.prepareStatement(sql);
				
				
				pstmt.setString(1, dto.getUser_id());
				pstmt.setString(2, dto.getUser_pwd());
				pstmt.setString(3, dto.getUser_nick());
				pstmt.setString(4, dto.getUser_name());
				pstmt.setString(5, dto.getUser_tel());
				pstmt.setString(6, dto.getUser_email());
				pstmt.setString(7, dto.getUser_addr1());
				pstmt.setString(8, dto.getUser_addr2());
				pstmt.setString(9, dto.getUser_gender());
				pstmt.setInt(10, dto.getUser_bir1());
				pstmt.setInt(11, dto.getUser_bir2());
				pstmt.setInt(12, dto.getUser_bir3());
				pstmt.setString(13, dto.getUser_rid());
				
			
				result = pstmt.executeUpdate();
				
				pstmt.close();
				
			} catch (Exception e) {
				System.out.println(e.toString());
			}
			return result;
		}
	
		//데이터 읽기
		public SoolUserDTO getReadData(String user_id) {
			
			SoolUserDTO dto = null;
			
			
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql;
			
			try {
				
				sql = "select user_id,user_pwd,user_nick,user_name,user_tel,"; 
				sql+= "user_email,user_addr1,user_addr2,user_gender,user_bir1,user_bir2,"; 
				sql+= "user_bir3,user_rid,user_date";
				sql+= " from users where user_id=?";
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, user_id);
				
				rs =pstmt.executeQuery();
				
				if(rs.next()) {
					
					dto = new SoolUserDTO();
					
			
					dto.setUser_id(rs.getString("user_id"));
					dto.setUser_pwd(rs.getString("user_pwd"));
					dto.setUser_nick(rs.getString("user_nick"));
					dto.setUser_name(rs.getString("user_name"));
					dto.setUser_tel(rs.getString("user_tel"));
					dto.setUser_email(rs.getString("user_email"));
					dto.setUser_addr1(rs.getString("user_addr1"));
					dto.setUser_addr2(rs.getString("user_addr2"));
					dto.setUser_gender(rs.getString("user_gender"));
					dto.setUser_bir1(rs.getInt("user_bir1"));
					dto.setUser_bir2(rs.getInt("user_bir2"));
					dto.setUser_bir3(rs.getInt("user_bir3"));
					dto.setUser_rid(rs.getString("user_rid"));
					dto.setUser_date(rs.getString("user_date"));
					
				}
				
				rs.close();
				pstmt.close();
				
			} catch (Exception e) {
				System.out.println(e.toString());
			}
			
			return dto;
			
		}
	
		//중복검사 메소드
		public SoolUserDTO getReadData() {
			
		SoolUserDTO dto = null;
		
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select user_id from users"; 
			
			
			pstmt = conn.prepareStatement(sql);
			
			
			
			rs =pstmt.executeQuery();
			
			if(rs.next()) {
				
				dto = new SoolUserDTO();
				
		
				dto.setUser_id(rs.getString("user_id"));
				dto.setUser_pwd(rs.getString("user_pwd"));
				dto.setUser_nick(rs.getString("user_nick"));
				dto.setUser_name(rs.getString("user_name"));
				dto.setUser_tel(rs.getString("user_tel"));
				dto.setUser_email(rs.getString("user_email"));
				dto.setUser_addr1(rs.getString("user_addr1"));
				dto.setUser_addr2(rs.getString("user_addr2"));
				dto.setUser_gender(rs.getString("user_gender"));
				dto.setUser_bir1(rs.getInt("user_bir1"));
				dto.setUser_bir2(rs.getInt("user_bir2"));
				dto.setUser_bir3(rs.getInt("user_bir3"));
				dto.setUser_rid(rs.getString("user_rid"));
				dto.setUser_date(rs.getString("user_date"));
				
			}
			
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return dto;
		
	}
		// 전체데이터
		public List<SoolUserDTO> getLists(){
			
			List<SoolUserDTO> lists = new ArrayList<SoolUserDTO>();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql;
			
			try {
				
				
				
				sql = "select * from users";
			
				
				pstmt = conn.prepareStatement(sql);
				
				
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					
					SoolUserDTO dto = new SoolUserDTO();
					dto.setUser_id(rs.getString("user_id"));
					dto.setUser_pwd(rs.getString("user_pwd"));
					dto.setUser_nick(rs.getString("user_nick"));
					dto.setUser_name(rs.getString("user_name"));
					dto.setUser_tel(rs.getString("user_tel"));
					dto.setUser_email(rs.getString("user_email"));
					dto.setUser_addr1(rs.getString("user_addr1"));
					dto.setUser_addr2(rs.getString("user_addr2"));
					dto.setUser_gender(rs.getString("user_gender"));
					dto.setUser_bir1(rs.getInt("user_bir1"));
					dto.setUser_bir2(rs.getInt("user_bir2"));
					dto.setUser_bir3(rs.getInt("user_bir3"));
					dto.setUser_rid(rs.getString("user_rid"));
					dto.setUser_date(rs.getString("user_date"));
					
					lists.add(dto);
				}
				
				rs.close();
				pstmt.close();
			
			} catch (Exception e) {
				System.out.println(e.toString());
			}
			
			return lists;
		}
	
	//비밀번호 찾기
		public String findPwd(SoolUserDTO dto) throws Exception {
			
		
			String user_id = null;
			
			dto = new SoolUserDTO();
			
			PreparedStatement pstmt = null;
			String sql;
			ResultSet rs = null;
			
			try {
				
				sql = "select user_id from users where user_name=? and user_tel=? ";
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, dto.getUser_name());
				pstmt.setString(2, dto.getUser_tel());
				
				rs = pstmt.executeQuery();
											
				if(rs.next()) {
					
					user_id = rs.getString("user_id");
					
				}
				rs.close();
				pstmt.close();
				
			} catch (Exception e) {
				
				System.out.println(e.toString());
			}
			return user_id;
		}
	
		//아이디 찾기
				public String findId(SoolUserDTO dto) throws Exception {
					
				
					String user_name = null;
					
					dto = new SoolUserDTO();
					
					PreparedStatement pstmt = null;
					String sql;
					ResultSet rs = null;
					
					try {
						
						sql = "select user_name from users where user_id=? and user_tel=? ";
						pstmt = conn.prepareStatement(sql);
						
						pstmt.setString(1, dto.getUser_id());
						pstmt.setString(2, dto.getUser_tel());
						
						rs = pstmt.executeQuery();
													
						if(rs.next()) {
							
							user_name = rs.getString("user_name");
							
						}
						rs.close();
						pstmt.close();
						
					} catch (Exception e) {
						
						System.out.println(e.toString());
					}
					return user_name;
				}
				
				//수정 
				
				public int updateData(SoolUserDTO dto) {
					
					int result = 0;
					
					PreparedStatement pstmt = null;
					String sql;
					
					try {
						
						// user_name, user_gender,user_bir1, user_bir2, user_bir3, user_rid, user_date
						sql = "update users set user_pwd=?, user_tel=?, user_email=?, user_addr1=?,";
						sql += "user_addr2=? where user_id=?";
						
						pstmt = conn.prepareStatement(sql);
						
						
						pstmt.setString(1, dto.getUser_pwd());
						pstmt.setString(2, dto.getUser_tel());
						pstmt.setString(3, dto.getUser_email());
						pstmt.setString(4, dto.getUser_addr1());
						pstmt.setString(5, dto.getUser_addr2());
						pstmt.setString(6, dto.getUser_id());
						
						
					
						result = pstmt.executeUpdate();
						
						pstmt.close();
						
						
					 
						
					} catch (Exception e) {
						System.out.println(e.toString());
					}
					return result;
				}
	
				//입력번호로 데이터 지우기
				public int deleteData(String user_id) {

					int result = 0;
					PreparedStatement pstmt = null;
					String sql;

					try {
						sql = "delete users where user_id=?";

						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, user_id);

						result = pstmt.executeUpdate();

						pstmt.close();

					} catch (Exception e) {
						System.out.println(e.toString());
					}

					return result;
				}
	
	
	
	
	
	
	
	
	
	
	
}
