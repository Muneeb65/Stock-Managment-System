package dao;
import entity.*;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.*;
public class SalesDAO extends GenericDAO
{
	
	public SalesDAO() throws ClassNotFoundException, SQLException
	{
		super();
	}
	public void insert(Sales p)throws SQLException
	{
		String sql="insert into sales (B_ID,S_DATE,P_ID,S_QTY)"+
		"values(?,SYSDATE(),?,?);";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1,p.getB_ID());
		pstmt.setInt(2, p.getP_ID());
		pstmt.setString(3,p.getS_QTY());
		pstmt.execute();
		pstmt.close();
	}
	public void delete(String n)throws SQLException
	{
		String sql="delecte from sales where S_ID=?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,n);
		pstmt.execute();
		pstmt.close();
	}
	public void update(int id,Sales p)throws SQLException
	{
		String sql="update sales set S_ID=?, B_ID=?, S_DATE=?,"+
		"P_ID=?, S_QTY=? where S_ID=?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1,p.getS_ID());
		pstmt.setInt(2,p.getB_ID());
		pstmt.setString(3,p.getS_DATE());
		pstmt.setInt(4,p.getP_ID());
		pstmt.setString(5,p.getS_QTY());
		pstmt.setInt(6, id);
		pstmt.execute();
		pstmt.close();
	}
	public ArrayList<Sales> get() throws SQLException
	{
		String sql="select * from sales ";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		ResultSet rs=pstmt.executeQuery();
		ArrayList<Sales>l =new ArrayList<Sales>();
		while(rs.next())
		{
			Sales s=new Sales();
			s.setB_ID(rs.getInt(2));
			s.setP_ID(rs.getInt(4));
			s.setS_DATE(rs.getString(3));
			s.setS_ID(rs.getInt(1));
			s.setS_QTY(rs.getString(5));
			l.add(s);
		}
		rs.close();
		pstmt.close();
		return l;
	}
}