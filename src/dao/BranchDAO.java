package dao;
import entity.*;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.*;
public class BranchDAO extends GenericDAO
{
	
	public BranchDAO() throws ClassNotFoundException
	{
		super();
	}
	public void insert(Branch p)throws SQLException
	{
		String sql="insert into branch (B_ID,B_NAME,P_ID,S_ID)"+
		"values(?,?,?,?);";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1,p.getB_ID());
		pstmt.setString(2,p.getB_NAME());
		pstmt.setInt(3,p.getP_ID());
		pstmt.setInt(4,p.getS_ID());
		pstmt.execute();
		pstmt.close();
	}
	public void delete(String n)throws SQLException
	{
		String sql="delecte from branch where B_ID=?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,n);
		pstmt.execute();
		pstmt.close();
	}
	public void update(int id,Branch p)throws SQLException
	{
		String sql="update branch set B_ID=?, B_NAME=?, P_ID=?,"+
		"S_ID=? where B_ID=?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1,p.getB_ID());
		pstmt.setString(2,p.getB_NAME());
		pstmt.setInt(3,p.getP_ID());
		pstmt.setInt(4,p.getS_ID());
		pstmt.setInt(5,id);
		pstmt.execute();
		pstmt.close();
	}
	public ArrayList get(String n) throws SQLException
	{
		String sql="select * from branch "+
		"where B_ID=?;";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,n);
		ResultSet rs=pstmt.executeQuery();
		ArrayList<Branch>l =new ArrayList<Branch>();
		while(rs.next())
		{
			Branch s=new Branch();
			
			l.add(s);
		}
		
		rs.close();
		pstmt.close();
		return l;
	}
}