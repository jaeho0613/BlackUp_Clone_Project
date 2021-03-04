package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


public class UserDAO {

	// 데이터 가져오기
	
	public UserDTO getUser(String userID) throws Exception {
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	UserDTO userDTO = new UserDTO();
	
	try {
		//conn = DatabaseUtil.getConnection();
		stmt = conn.prepareStatement("select * from where userid = ?");
		stmt.setString(1, userID);
		rs = stmt.executeQuery();
		rs.next();
		
		userDTO
		.setUserID(rs.getString("userID"))
		.setUserAddress(rs.getString("userAddress"))
		.setUserRating(rs.getInt("userRating"))
		.setUserPassword(rs.getString("userPassword"))
		.setUserPasswordHash(rs.getString("userPasswordHash"))
		.setUserName(rs.getString("userName"))
		.setUserPhone(rs.getString("userPhone"))
		.setUserSex(rs.getString("userSex"));
				
		return userDTO;
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
		return null;
		
	}
	
	// 데이터 작성
	public int write(UserDTO userDTO) throws Exception {
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {
		//	conn = DatabaseUtil.getConnection();
			stmt = conn.prepareStatement("insert into user(userID, userRating, \n"
					+ "userPassword, userPasswordHash, \n"
					+ "userName, userAddress, userPhone, userSex) \n"
					+ "values(?, 0, ?, ?, ?, ?, ? ,?);");
			
//			stmt.setString(1, user.userID);
//			stmt.setString(2, user.userRating);
//			stmt.setString(3, user.userPassword);
//			stmt.setString(4, user.userPasswordHash);
//			stmt.setString(5, user.userName);
//			stmt.setString(6, user.userAddress);
//			stmt.setString(7, user.userPhone);
//			stmt.setString(8, user.userSex);
			
			return 0;		
					
		} catch (Exception e) {
			throw e;
			}finally {
			try {
				if (stmt != null) {
					stmt.close();
				}
			} catch (Exception e2) {

			}
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e2) {

			}
		}
	}
	
	
}
