package dao;
import entity.*;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.*;
public class StoreDAO extends GenericDAO
{
	
	public StoreDAO() throws ClassNotFoundException
	{
		super();
	}
	public void insert(Store p)throws SQLException
	{
		String sql="insert into store_house (SYS_MGR_ID,B_ID,P_ID,S_ID)"+
		"values(?,?,?,?);";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1,p.getSYS_MGR_ID());
		pstmt.setInt(2,p.getB_ID());
		pstmt.setInt(3,p.getP_ID());
		pstmt.setInt(4,p.getS_ID());
		pstmt.execute();
		pstmt.close();
	}
	public void delete(String n)throws SQLException
	{
		String sql="delecte from store_house where SYS_MGR_ID=?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,n);
		pstmt.execute();
		pstmt.close();
	}
	public void update(int id,Store p)throws SQLException
	{
		String sql="update store_house set SYS_MGR_ID=?, B_ID=?, P_ID=?,"+
		"S_ID=?, where SYS_MGR_ID=?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1,p.getSYS_MGR_ID());
		pstmt.setInt(2,p.getB_ID());
		pstmt.setInt(3,p.getP_ID());
		pstmt.setInt(4,p.getS_ID());
		pstmt.setInt(5,id);
		pstmt.execute();
		pstmt.close();
	}
	public String get(String n) throws SQLException
	{
		String sql="select * from store_house "+
		"where SYS_MGR_ID=?;";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,n);
		ResultSet rs=pstmt.executeQuery();
		String result="";
		
		rs.close();
		pstmt.close();
		return result;
	}
}