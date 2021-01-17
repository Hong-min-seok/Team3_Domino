package net.board.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.IssueBean;
import net.board.db.IssueDAO;

public class DominoUserIssueList implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("DominoUsserIssueList Ŀ�ǵ�׼� ����");
		
		ActionForward forward = new ActionForward();
		IssueDAO issuedao = new IssueDAO();
		IssueBean issuebean = new IssueBean();
		List issuelist=new ArrayList();
		
		int listcount = issuedao.getListCount();
		issuelist = issuedao.getIssueList();
		
		request.setAttribute("issuelist", issuelist);
		request.setAttribute("listcount", listcount);
		
		forward.setRedirect(false);
		forward.setPath("./userIssueList.jsp");
		return forward;
	}

}