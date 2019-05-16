package dao;
import entity.*;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.*;
public class AddressDAO extends GenericDAO
{
	
	public AddressDAO() throws ClassNotFoundException
	{
		super();
	}
	public void insert(Address p)throws SQLException
	{
		String sql="insert into address (SYS_OPR_ID,CITY,STATE,STREET,ZIP,CNIC,B_ID)"+
		"values(?,?,?,?,?,?,?);";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1,p.getSYS_OPR_ID());
		pstmt.setString(2,p.getCITY());
		pstmt.setString(3,p.getSTATE());
		pstmt.setString(4,p.getSTREET());
		pstmt.setString(5,p.getZIP());
		pstmt.setString(6,p.getCNIC());
		pstmt.setInt(7,p.getB_ID());
		pstmt.execute();
		pstmt.close();
	}
	public void delete(String n)throws SQLException
	{
		String sql="delecte from address where SYS_OPR_ID=?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,n);
		pstmt.execute();
		pstmt.close();
	}
	public void update(String id,Address p)throws SQLException
	{
		String sql="update address set SYS_OPR_ID=?, CITY=?, STATE=?,"+
		"STREET=?,ZIP=?, CNIC=?, B_ID=? where SYS_OPR_ID=?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1,p.getSYS_OPR_ID());
		pstmt.setString(2,p.getCITY());
		pstmt.setString(3,p.getSTATE());
		pstmt.setString(4,p.getSTREET());
		pstmt.setString(5,p.getZIP());
		pstmt.setString(6,p.getCNIC());
		pstmt.setInt(7,p.getB_ID());
		pstmt.setString(8,id);
		pstmt.execute();
		pstmt.close();
	}
	public String get(String n) throws SQLException
	{
		String sql="select * from address "+
		"where SYS_OPR_ID=?;";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,n);
		ResultSet rs=pstmt.executeQuery();
		String result="";
		
		rs.close();
		pstmt.close();
		return result;
	}
}