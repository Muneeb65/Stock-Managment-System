package dao;
import entity.*;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.*;
public class SysOperatorDAO extends GenericDAO
{
	
	public SysOperatorDAO() throws ClassNotFoundException
	{
		
	}
	public void insert(SysOperator p)throws SQLException
	{
		String sql="insert into system_operator (B_ID,SYS_OPR_USRNAME,SYS_OPR_PASSWORD)"+
		"values(?,?,?);";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1,p.getB_ID());
		pstmt.setString(2,p.getSYS_OPR_USERNAME());
		pstmt.setString(3,p.getSYS_OPR_PASSWORD());
		pstmt.execute();
		pstmt.close();
	}
	public void delete(String n)throws SQLException
	{
		String sql="delecte from system_operator where SYS_OPR_ID=?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,n);
		pstmt.execute();
		pstmt.close();
	}
	public void update(int id,SysOperator p)throws SQLException
	{
		String sql="update system_operator set SYS_OPR_ID=?, B_ID=?, SYS_OPR_USRNAME=?,"+
		"SYS_OPR_PASSWORD=? where SYS_OPR_ID=?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1,p.getSYS_OPR_ID());
		pstmt.setInt(2,p.getB_ID());
		pstmt.setString(3,p.getSYS_OPR_USERNAME());
		pstmt.setString(4,p.getSYS_OPR_PASSWORD());
		pstmt.setInt(5,id);
		pstmt.execute();
		pstmt.close();
	}
	public ArrayList<SysOperator> get() throws SQLException
	{
		String sql="select * from system_operator ;";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		ResultSet rs=pstmt.executeQuery();
		
		ArrayList<SysOperator>l =new ArrayList<SysOperator>();
		while(rs.next())
		{
			SysOperator s=new SysOperator();
			s.setSYS_OPR_ID(rs.getInt(1));
			s.setB_ID(rs.getInt(2));
			s.setSYS_OPR_USERNAME(rs.getString(3));
			s.setSYS_OPR_PASSWORD(rs.getString(4));
			l.add(s);
		}
		
		rs.close();
		pstmt.close();
		return l;
	}
}