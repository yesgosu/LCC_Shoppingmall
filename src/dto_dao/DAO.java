package dto_dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.SQLIntegrityConstraintViolationException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

public class DAO {
	static String sql;
	
	public String getSql() {
		return sql;
	}

	public void setSql(String sql) {
		DAO.sql = sql;
	}
//###############################################################################
//SQL_CONNECTION	
//###############################################################################
	public Connection getConnection() {
		//try,catch 미사용시 throw, throws 를 이용한 예외처리를 작성해줘야한다.
		Connection con = null;
		try {
			Context Ctx = new InitialContext();
			DataSource ds = (DataSource) Ctx.lookup("java:comp/env/jdbc/SEUNGJUN");
			con = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
//			e.getMessage() : 에러의 원인을 간단하게 출력합니다.
//		 	e.toString() : 에러의 Exception 내용과 원인을 출력합니다.
//			e.printStackTrace() : 에러의 발생근원지를 찾아서 단계별로 에러를 출력합니다.
		}
		return con;
	}

//###############################################################################
//SQL_INSERT	
//###############################################################################

	//pstmt에 대한 예외처리를 SQLE로 잡아준다.
	public void db_insert_to_USERS(DTO_USERS dto) throws SQLException {
		Connection con = getConnection();
		String sql = "INSERT INTO USERS VALUES(?, ?, ?, ?, ?, ?, ?, SYSDATE)";
		PreparedStatement pstmt = con.prepareStatement(sql);
	
		try {
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPwd());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getBirthday());
			pstmt.setString(6, dto.getPhone());
			pstmt.setInt(7, dto.getSex());
			pstmt.executeUpdate();
		} catch(SQLIntegrityConstraintViolationException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) pstmt.close();
			if (con != null) con.close();
		}
		
		//try-catch-finally
	}
	
	public void db_insert_to_orders(DTO_ORDERS dto) throws SQLException {
		Connection con = getConnection();
		String sql = "INSERT INTO ORDERS VALUES(ORDER_NUMBER.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, SYSDATE, ?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
	
		try {
			pstmt.setString(1, dto.getPRODUCTCODE());
			pstmt.setString(2, dto.getUSERID());
			pstmt.setString(3, dto.getORDERSNAME());
			pstmt.setString(4, dto.getFRODUCTNAME());
			pstmt.setString(5, dto.getORDERQNANTITY());
			pstmt.setString(6, dto.getFORDUCTPRICE());
			pstmt.setString(7, dto.getRECIPIENTNAME());
			pstmt.setString(8, dto.getRECIPIENTPHONE());
			pstmt.setString(9, dto.getSHIPPINGADDRESS());
			pstmt.setString(10, dto.getFORWARDINGMESSAGEINABSENCE());
			pstmt.setString(11, dto.getPAYMENTMETHOD());
			pstmt.setString(12, dto.getPRODUCT_OPTION());
			pstmt.executeUpdate();
		} catch(SQLIntegrityConstraintViolationException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) pstmt.close();
			if (con != null) con.close();
		}
		
		//try-catch-finally
	}
	
	public void db_insert_to_cart(DTO_CART dto) throws SQLException {
		Connection con = getConnection();
		String sql = "INSERT INTO CART VALUES(?, ?, ?, ?, ?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
	
		try {
			pstmt.setString(1, dto.getUSER_ID());
			pstmt.setString(2, dto.getPRODUCT_CODE());
			pstmt.setString(3, dto.getPRODUCT_OPTION());
			pstmt.setString(4, dto.getPRODUCT_COUNT());
			pstmt.setString(5, dto.getPRODUCT_PRICE());
			pstmt.executeUpdate();
		} catch(SQLIntegrityConstraintViolationException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) pstmt.close();
			if (con != null) con.close();
		}
		
		//try-catch-finally
	}
	
	public void db_insert_to_board(DTO_BOARD dto) throws SQLException {
		Connection con = getConnection();
		String sql = "INSERT INTO BOARD VALUES(BOARD_NUMBER.NEXTVAL, ?, ?, ?, SYSDATE)";
		PreparedStatement pstmt = con.prepareStatement(sql);
	
		try {
			pstmt.setString(1, dto.getUSER_ID());
			pstmt.setString(2, dto.getSUBJECT());
			pstmt.setString(3, dto.getBOARD_CONTENT());
			pstmt.executeUpdate();
		} catch(SQLIntegrityConstraintViolationException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) pstmt.close();
			if (con != null) con.close();
		}
		
		//try-catch-finally
	}
//###############################################################################
//SQL_SELECT
//###############################################################################

	public ArrayList<DTO_USERS> db_select() throws SQLException {
		Connection con = getConnection();
		Statement st = con.createStatement();
		
		ArrayList<DTO_USERS> dtos = new ArrayList<>();
		
		try {
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()) {
				DTO_USERS dto = new DTO_USERS(rs.getString("ID"), rs.getString("PWD"), rs.getString("NAME"),  rs.getString("EMAIL"),
						 rs.getString("BIRTHDAY"), rs.getString("PHONE"), rs.getInt("SEX"));
				dtos.add(dto);
			}
		}catch(Exception e) {
			
		}finally {
			if (st != null) st.close();
			if (con != null) con.close();
		}
		return dtos;
	}
	
	public ArrayList<DTO_PRODUCT> db_select_product() throws SQLException {
		Connection con = getConnection();
		Statement st = con.createStatement();
		
		ArrayList<DTO_PRODUCT> dtos = new ArrayList<>();
		
		try {
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()) {
				DTO_PRODUCT dto = new DTO_PRODUCT(rs.getString("PRODUCTCODE"),
						rs.getString("PRODUCTTPYE"), rs.getString("PRODUCTNAME"),
						rs.getString("PRODCUTPRICE"));
				dtos.add(dto);
			}
		}catch(Exception e) {
			
		}finally {
			if (st != null) st.close();
			if (con != null) con.close();
		}
		return dtos;
	}
	
	public ArrayList<DTO_ORDERS> db_select_oreders() throws SQLException {
		Connection con = getConnection();
		Statement st = con.createStatement();
		
		ArrayList<DTO_ORDERS> dtos = new ArrayList<>();
		try {
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()) {
				DTO_ORDERS dto = new DTO_ORDERS(rs.getString("PRODUCTORDERSCODE"), rs.getString("PRODUCTCODE"),
						rs.getString("USERID"), rs.getString("ORDERSNAME"), rs.getString("FRODUCTNAME"),
						rs.getString("ORDERQNANTITY"), rs.getString("FORDUCTPRICE"), rs.getString("RECIPIENTNAME"),
						rs.getString("RECIPIENTPHONE"), rs.getString("SHIPPINGADDRESS"),
						rs.getString("FORWARDINGMESSAGEINABSENCE"), rs.getString("PAYMENTMETHOD"),
						rs.getString("PAYMENTTIME"), rs.getString("PRODUCT_OPTION"));
				dtos.add(dto);
			}
		}catch(Exception e) {
			
		}finally {
			if (st != null) st.close();
			if (con != null) con.close();
		}
		return dtos;
	}
	
	public ArrayList<DTO_CART> db_select_cart() throws SQLException {
		Connection con = getConnection();
		Statement st = con.createStatement();
		
		ArrayList<DTO_CART> dtos = new ArrayList<>();
		try {
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()) {
				DTO_CART dto = new DTO_CART(rs.getString("USER_ID"), rs.getString("PRODUCT_CODE"),
						rs.getString("PRODUCT_OPTION"), rs.getString("PRODUCT_COUNT"), rs.getString("PRODUCT_PRICE"));
				dtos.add(dto);
			}
		}catch(Exception e) {
			
		}finally {
			if (st != null) st.close();
			if (con != null) con.close();
		}
		return dtos;
	}
	
	public ArrayList<DTO_BOARD> db_select_board() throws SQLException {
		Connection con = getConnection();
		Statement st = con.createStatement();
		
		ArrayList<DTO_BOARD> dtos = new ArrayList<>();
		try {
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()) {
				DTO_BOARD dto = new DTO_BOARD(rs.getString("BOARD_NUMBER"), rs.getString("USER_ID"), rs.getString("SUBJECT"),
						rs.getString("BOARD_CONTENT"), rs.getString("WRITE_DATE"));
				dtos.add(dto);
			}
		}catch(Exception e) {
			
		}finally {
			if (st != null) st.close();
			if (con != null) con.close();
		}
		return dtos;
	}
	
//###############################################################################
//SQL_UPDATE	
//###############################################################################

	public void db_update_users() throws SQLException {
		Connection con = getConnection();
		Statement st = con.createStatement();
		try {
			st.executeUpdate(sql);
		}catch(Exception e) {
			
		}finally {
			if (st != null) st.close();
			if (con != null) con.close();
		}
	}
	
	public void db_update_board() throws SQLException {
		Connection con = getConnection();
		Statement st = con.createStatement();
		try {
			st.executeUpdate(sql);
		}catch(Exception e) {
			
		}finally {
			if (st != null) st.close();
			if (con != null) con.close();
		}
	}
	
	
//###############################################################################
//SQL_DELETE	
//###############################################################################
	public void db_delete_board() throws SQLException {
		Connection con = getConnection();
		Statement st = con.createStatement();
		try {
			st.executeUpdate(sql);
		}catch(Exception e) {
			
		}finally {
			if (st != null) st.close();
			if (con != null) con.close();
		}
	}
	
}
