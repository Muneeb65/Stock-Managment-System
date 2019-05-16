package dao;

import java.sql.*;

public class GenericDAO
{
	public static Connection conn;
	public GenericDAO() throws ClassNotFoundException
	{
		try{
			config();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
	}
	public void config() throws SQLException  ,ClassNotFoundException
	{
		String uname="root";
		String pass="";
		String conn_str="jdbc:mysql://localhost/stock management system";
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn=DriverManager.getConnection(conn_str,uname,pass);
			System.out.println("connected");
		}
		catch (SQLException e)
		{
			e.printStackTrace();
			System.exit(0);
		}
	}
}