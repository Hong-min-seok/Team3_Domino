package net.board.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class IssueDAO {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public IssueDAO() {
		try{
			Context init = new InitialContext();
	  		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
	  		con = ds.getConnection();
		}catch(Exception ex){
			System.out.println("DB ���� ���� : " + ex);
			return;
		}
	}
	
	//���� ���� ���ϱ�.
	public int getListCount() {
		System.out.println("getListCount �Լ� ����");
		int x= 0;
		
		try{
			pstmt=con.prepareStatement("select count(*) from media_issue");
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				x=rs.getInt(1);
			}
		}catch(Exception ex){
			System.out.println("getListCount ����: " + ex);			
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return x;
	}
	
	//�� ��� ����.	
	public List getIssueList(){
		System.out.println("getIssueList�Լ� ����");
		String issue_list_sql="select * from media_issue order by list_num desc";
		
		List list = new ArrayList();
		

		try{
			pstmt = con.prepareStatement(issue_list_sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				IssueBean bean = new IssueBean();
				bean.setList_num(rs.getInt("list_num"));
				bean.setTitle(rs.getString("title"));
				bean.setBulletin(rs.getString("bulletin"));
				bean.setAdd_file(rs.getString("add_file"));
				list.add(bean);
			}
			
			return list;
		}catch(Exception ex){
			System.out.println("getIssueList ���� : " + ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return null;
	}
	
	//���� ���
	public boolean issueWrite(IssueBean bean) throws Exception {
		
		System.out.println("issueWrite �Լ� ����");

		int result = 0;

		try {
			String sql = "INSERT INTO media_issue(list_num, title, bulletin, add_file)"
					+ "VALUES(media_issue_SEQ.NEXTVAL,?,?,?)";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getTitle());
			pstmt.setString(2, bean.getBulletin());
			pstmt.setString(3, bean.getAdd_file());

			result = pstmt.executeUpdate();
			if (result == 0)
				return false;
			System.out.println("����� IssueDAO�� issueWrite : ��� ����!");
			return true;

		} catch (Exception ex) {
			System.out.println("issueWrite ���� : " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}
		return false;

	}
	
	
	//�� ���� ����.
	public IssueBean getIssueDetail(int num) throws Exception{
		
		System.out.println("getIssueDetail �Լ� ����");
		IssueBean bean = null;
		try{
			pstmt = con.prepareStatement(
					"select * from media_issue where list_num = ?");
			pstmt.setInt(1, num);
			
			rs= pstmt.executeQuery();
			
			if(rs.next()){
				bean = new IssueBean();
				bean.setList_num(rs.getInt("list_num"));
				bean.setTitle(rs.getString("title"));
				bean.setBulletin(rs.getString("bulletin"));
				bean.setAdd_file(rs.getString("add_file"));
				
			}
			return bean;
		}catch(Exception ex){
			System.out.println("getIssueDetail ���� : " + ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt !=null)try{pstmt.close();}catch(SQLException ex){}
		}
		return null;
	}
	
	//���� ����
	public boolean issueDelete(int num){
		String issue_delete_sql="delete from media_issue where list_num=?";
		
		int result=0;
		
		try{
			pstmt=con.prepareStatement(issue_delete_sql);
			pstmt.setInt(1, num);
			result=pstmt.executeUpdate();
			if(result==0)return false;
			
			return true;
		}catch(Exception ex){
			System.out.println("issueDelete ���� : "+ex);
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
			}catch(Exception ex) {}
		}
		
		return false;
	}
	
	/*
	//�� ���.
	public boolean boardInsert(BoardBean board){
		int num =0;
		String sql="";
		
		int result=0;
		
		try{
			pstmt=con.prepareStatement("select max(board_num) from board");
			rs = pstmt.executeQuery();
			
			if(rs.next())
				num =rs.getInt(1)+1;
			else
				num=1;
			
			sql="insert into board (BOARD_NUM,BOARD_NAME,BOARD_PASS,BOARD_SUBJECT,";
			sql+="BOARD_CONTENT, BOARD_FILE, BOARD_RE_REF,"+
				"BOARD_RE_LEV,BOARD_RE_SEQ,BOARD_READCOUNT,"+
				"BOARD_DATE) values(?,?,?,?,?,?,?,?,?,?,sysdate)";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, board.getBOARD_NAME());
			pstmt.setString(3, board.getBOARD_PASS());
			pstmt.setString(4, board.getBOARD_SUBJECT());
			pstmt.setString(5, board.getBOARD_CONTENT());
			pstmt.setString(6, board.getBOARD_FILE());
			pstmt.setInt(7, num);
			pstmt.setInt(8, 0);
			pstmt.setInt(9, 0);
			pstmt.setInt(10, 0);
			
			result=pstmt.executeUpdate();
			if(result==0)return false;
			
			return true;
		}catch(Exception ex){
			System.out.println("boardInsert ���� : "+ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return false;
	}
	
	//�� �亯.
	public int boardReply(BoardBean board){
		String board_max_sql="select max(board_num) from board";
		String sql="";
		int num=0;
		int result=0;
		
		int re_ref=board.getBOARD_RE_REF();
		int re_lev=board.getBOARD_RE_LEV();
		int re_seq=board.getBOARD_RE_SEQ();
		
		try{
			pstmt=con.prepareStatement(board_max_sql);
			rs = pstmt.executeQuery();
			if(rs.next())num =rs.getInt(1)+1;
			else num=1;
			
			sql="update board set BOARD_RE_SEQ=BOARD_RE_SEQ+1 where BOARD_RE_REF=? ";
			sql+="and BOARD_RE_SEQ>?";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,re_ref);
			pstmt.setInt(2,re_seq);
			result=pstmt.executeUpdate();
			
			re_seq = re_seq + 1;
			re_lev = re_lev+1;
			
			sql="insert into board (BOARD_NUM,BOARD_NAME,BOARD_PASS,BOARD_SUBJECT,";
			sql+="BOARD_CONTENT, BOARD_FILE,BOARD_RE_REF,BOARD_RE_LEV,BOARD_RE_SEQ,";
			sql+="BOARD_READCOUNT,BOARD_DATE) values(?,?,?,?,?,?,?,?,?,?,sysdate)";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, board.getBOARD_NAME());
			pstmt.setString(3, board.getBOARD_PASS());
			pstmt.setString(4, board.getBOARD_SUBJECT());
			pstmt.setString(5, board.getBOARD_CONTENT());
			pstmt.setString(6, ""); //���忡�� ������ ���ε����� ����.
			pstmt.setInt(7, re_ref);
			pstmt.setInt(8, re_lev);
			pstmt.setInt(9, re_seq);
			pstmt.setInt(10, 0);
			pstmt.executeUpdate();
			return num;
		}catch(SQLException ex){
			System.out.println("boardReply ���� : "+ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
		}
		return 0;
	}
	
	//�� ����.
	public boolean boardModify(BoardBean modifyboard) throws Exception{
		String sql="update board set BOARD_SUBJECT=?,BOARD_CONTENT=? where BOARD_NUM=?";
		
		try{
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, modifyboard.getBOARD_SUBJECT());
			pstmt.setString(2, modifyboard.getBOARD_CONTENT());
			pstmt.setInt(3, modifyboard.getBOARD_NUM());
			pstmt.executeUpdate();
			return true;
		}catch(Exception ex){
			System.out.println("boardModify ���� : " + ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
			}
		return false;
	}
	
	//�� ����.
	public boolean boardDelete(int num){
		String board_delete_sql="delete from board where BOARD_num=?";
		
		int result=0;
		
		try{
			pstmt=con.prepareStatement(board_delete_sql);
			pstmt.setInt(1, num);
			result=pstmt.executeUpdate();
			if(result==0)return false;
			
			return true;
		}catch(Exception ex){
			System.out.println("boardDelete ���� : "+ex);
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
			}catch(Exception ex) {}
		}
		
		return false;
	}
	
	//��ȸ�� ������Ʈ.
	public void setReadCountUpdate(int num) throws Exception{
		String sql="update board set BOARD_READCOUNT = "+
			"BOARD_READCOUNT+1 where BOARD_NUM = "+num;
		
		try{
			pstmt=con.prepareStatement(sql);
			pstmt.executeUpdate();
		}catch(SQLException ex){
			System.out.println("setReadCountUpdate ���� : "+ex);
		}
	}
	
	//�۾������� Ȯ��.
	public boolean isBoardWriter(int num,String pass){
		String board_sql="select * from board where BOARD_NUM=?";
		
		try{
			pstmt=con.prepareStatement(board_sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			rs.next();
			
			if(pass.equals(rs.getString("BOARD_PASS"))){
				return true;
			}
		}catch(SQLException ex){
			System.out.println("isBoardWriter ���� : "+ex);
		}
		return false;
	}
	*/
}
