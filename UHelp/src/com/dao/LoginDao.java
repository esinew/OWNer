package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import com.user.Login;


public class LoginDao {
	
	
	
	public static int login(Login login){//增删改
		final String URL="jdbc:mysql://localhost:3306/test";
		final String USERNAME="root";
		final String PWD="123";
		int result=-1;
		ResultSet rs=null;
		PreparedStatement pstmt=null;
		Connection connection=null;
		try {
		Class.forName("com.mysql.jdbc.Driver");//加载驱动类
		connection = DriverManager.getConnection(URL,USERNAME,PWD);
//		String sql="INSERT INTO stu VALUES(?,?,?);";
		String sql="SELECT *FROM stu WHERE `name`=? AND `password`=?;";
		
		pstmt = connection.prepareStatement(sql);
		pstmt.setString(1, login.getUname());
		pstmt.setString(2,login.getPwd());	
//		pstmt.setInt(1, 4);
//		pstmt.setString(2, "aa");
//		pstmt.setString(3,"qqq");
		rs = pstmt.executeQuery();
		if(rs.next()) {
			result=rs.getInt(1);
		}
		if (result>0) {
			return 1;
		} else {
			return -1;
		}
		
		}catch (ClassNotFoundException e) {			
			e.printStackTrace();
			return -1;
		}catch (SQLException e) {	
			e.printStackTrace();
			return -1;
		}catch (Exception e) {
			e.printStackTrace();
			return-1;
		}finally {
			
				try {
					if(rs!=null)rs.close();
					if(pstmt!=null)pstmt.close();
					if(connection!=null) connection.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return-1;
				}catch(Exception e) {
					e.printStackTrace();
					return-1;
				}
		}
	}
}
