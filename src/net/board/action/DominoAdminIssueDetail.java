package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.*;

public class DominoAdminIssueDetail implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	System.out.println("DominoAdminIssueDetail µé¾î¿È");
		
		ActionForward forward= new ActionForward();
		IssueDAO issuedao = new IssueDAO();
		IssueBean issuebean = new IssueBean();
		
		int list_num = Integer.parseInt(request.getParameter("num"));
		issuebean = issuedao.getIssueDetail(list_num);
		
		request.setAttribute("issuebean", issuebean);
		
		forward.setRedirect(false);
		forward.setPath("adminIssueDetail.jsp");
		return forward;
		
	}

}
