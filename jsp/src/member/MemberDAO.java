package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() {
		return instance;
	}
	public MemberDAO() {}
	
	private Connection getConnection() throws Exception{
		Context 	initCtx = new InitialContext();
		Context 	envCtx  = (Context)  initCtx.lookup("java:comp/env");
		DataSource	ds      = (DataSource)envCtx.lookup("jdbc/orcl");
		return ds.getConnection();
	}
	
	public void insertMember(MemberDTO member) throws Exception{
		Connection 		  conn  = null;
		PreparedStatement pstmt = null;
		
		try {
			conn  = getConnection();
			pstmt = conn.prepareStatement(
					"INSERT INTO MEMBER VALEUS (?,?,?,?)");
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPw());
			pstmt.setString(3, member.getName());
			pstmt.setTimestamp(4, member.getReg_date());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) try {pstmt.close();} catch (SQLException se) {}
			if (conn  != null) try {conn.close();}  catch (SQLException se) {}
		}
	}
	@SuppressWarnings("resource")
	public int  deleteMember(String id, String passwd) throws Exception{
		Connection		  conn  = null;
		PreparedStatement pstmt = null;
		ResultSet rs 	   = null;
		String	  dbPw = "";
		int 	  isDel    = -1;
		
		try {
			conn  = getConnection();
			pstmt = conn.prepareStatement(
					"SELECT PW FROM MEMBER WHERE ID=?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				dbPw = rs.getString("PW");
			}
			if (dbPw.equals(passwd)) {
				pstmt = conn.prepareStatement(
						"DELETE FROM MEMBER WHERE ID=?");
				pstmt.setString(1, id);
				pstmt.executeUpdate();
				isDel = 1;
			} else {
				isDel = 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs 	  != null) try {rs.close();} 	catch (SQLException se) {}
			if (pstmt != null) try {pstmt.close();} catch (SQLException se) {}
			if (conn  != null) try {conn.close();}  catch (SQLException se) {}
		}
		return isDel;
	}
	public void updateMember(MemberDTO member) throws Exception{
		Connection 		  conn  = null;
		PreparedStatement pstmt = null;
		
		try {
			conn  = getConnection();
			pstmt = conn.prepareStatement(
					"UPDATE MEMBER SET PW=?, NAME=? WHERE ID=?");
			pstmt.setString(1, member.getPw());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getId());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) try {pstmt.close();} catch (SQLException se) {}
			if (conn  != null) try {conn.close();}  catch (SQLException se) {}
		}
	}
	public MemberDTO selectMember(String id) throws Exception {
		Connection 		  conn   = null;
		PreparedStatement pstmt  = null;
		ResultSet 		  rs 	 = null;
		MemberDTO 		  member = null;
		
		try {
			conn  = getConnection();
			pstmt = conn.prepareStatement(
					"SELECT * FROM MEMBER WHERE ID=?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				member = new MemberDTO();
				member.setId(rs.getString("id"));
				member.setPw(rs.getString("pw"));
				member.setName(rs.getString("name"));
				member.setReg_date(rs.getTimestamp("reg_date"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)    try {rs.close();}    catch (SQLException se) {}
			if (pstmt != null) try {pstmt.close();} catch (SQLException se) {}
			if (conn != null)  try {conn.close();}  catch (SQLException se) {}
		}
		return member;
	}
	public int userCheck(String id, String passwd) throws Exception{
		Connection 		  conn  = null;
		PreparedStatement pstmt = null;
		ResultSet	rs	   = null;
		String		dbPw   ="";
		int 		isUser = -1;
		
		try {
			conn  = getConnection();
			pstmt = conn.prepareStatement(
					"SELECT PW FROM MEMBER WHERE ID=?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				dbPw = rs.getString("PW");
				if (dbPw.equals(passwd)) {
					isUser = 1;
				} else {
					isUser = 0;
				}
			} else {
				isUser = -1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs 	  != null) try {rs.close();} 	catch (SQLException se) {}
			if (pstmt != null) try {pstmt.close();} catch (SQLException se) {}
			if (conn  != null) try {conn.close();}  catch (SQLException se) {}
		}
		return isUser;
	}
	public int confirmId(String id) throws Exception {
		Connection 		  conn  = null;
		PreparedStatement pstmt = null;
		ResultSet rs   = null;
		int		  IsId = -1;
		
		try {
			conn  = getConnection();
			pstmt = conn.prepareStatement(
					"SELECT ID FROM MEMBER WHERE ID=?");
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				IsId = 1;
			} else {
				IsId = -1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs    != null) try {rs.close();}    catch (SQLException se) {}
			if (pstmt != null) try {pstmt.close();} catch (SQLException se) {}
			if (conn  != null) try {conn.close();}  catch (SQLException se) {}
		}
		return IsId;
	}
}
