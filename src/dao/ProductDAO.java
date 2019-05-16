package dao;
import entity.*;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.*;
public class ProductDAO extends GenericDAO
{
	
	public ProductDAO() throws ClassNotFoundException
	{
		super();
	}
	public void insert(Product p)throws SQLException
	{
		String sql="insert into product (P_NAME,P_CATEGORY,B_ID,P_PRICE,P_QTY)"+
		"values(?,?,?,?,?);";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		//pstmt.setInt(1,p.getP_ID());
		pstmt.setString(1,p.getP_NAME());
		pstmt.setString(2,p.getP_CATEGORY());
		pstmt.setInt(3,p.getB_ID());
		pstmt.setString(4,p.getP_PRICE());
		pstmt.setString(5,p.getP_QTY());
		pstmt.execute();
		pstmt.close();
	}
	public void delete(String n)throws SQLException
	{
		String sql="delecte from product where P_ID=?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,n);
		pstmt.execute();
		pstmt.close();
	}
	public void update(Product p)throws SQLException
	{
		String sql="update product set P_QTY=? where P_ID=?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,p.getP_QTY());
		pstmt.setInt(2,p.getP_ID());
		pstmt.execute();
		pstmt.close();
	}
	public ArrayList<Product> search(String p, int b) throws SQLException
	{
		String sql="select * from product "+
		"where P_NAME=? AND B_ID=?;";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,p);
		pstmt.setInt(2, b);
		ResultSet rs=pstmt.executeQuery();
		ArrayList<Product>l =new ArrayList<Product>();
		while(rs.next())
		{
			Product s=new Product();
			s.setP_ID(rs.getInt(1));
			s.setP_NAME(rs.getString(2));
			s.setP_CATEGORY(rs.getString(3));
			s.setB_ID(rs.getInt(4));
			s.setP_PRICE(rs.getString(5));
			s.setP_QTY(rs.getString(6));
			l.add(s);
		}
		
		rs.close();
		pstmt.close();
		return l;
	}
	public ArrayList<Product> get(int b)throws SQLException
	{
		String sql="select * from product "+
				"WHERE B_ID=?;";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1,b);
		ResultSet rs=pstmt.executeQuery();
		ArrayList<Product>l =new ArrayList<Product>();
		while(rs.next())
		{
			Product s=new Product();
			s.setP_ID(rs.getInt(1));
			s.setP_NAME(rs.getString(2));
			s.setP_CATEGORY(rs.getString(3));
			s.setB_ID(rs.getInt(4));
			s.setP_PRICE(rs.getString(5));
			s.setP_QTY(rs.getString(6));
			l.add(s);
		}
		
		rs.close();
		pstmt.close();
		return l;
	}
	
	public ArrayList<Product> retrieve() throws SQLException
	{
		String sql="select * from product ";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		ResultSet rs=pstmt.executeQuery();
		ArrayList<Product>l =new ArrayList<Product>();
		while(rs.next())
		{
			Product s=new Product();
			s.setP_ID(rs.getInt(1));
			s.setP_NAME(rs.getString(2));
			s.setP_CATEGORY(rs.getString(3));
			s.setB_ID(rs.getInt(4));
			s.setP_PRICE(rs.getString(5));
			s.setP_QTY(rs.getString(6));
			l.add(s);
		}
		
		rs.close();
		pstmt.close();
		return l;
	}
}