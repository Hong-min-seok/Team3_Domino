package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.*;

public class DominoAdminAllianceDetail implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("DominoAdminAllianceDetail µé¾î¿È");
		
		ActionForward forward= new ActionForward();
		AllianceDAO alliancedao = new AllianceDAO();
		AllianceBean alliancebean = new AllianceBean();
		
		int list_num = Integer.parseInt(request.getParameter("list_num"));
		alliancebean = alliancedao.getAllianceDetail(list_num);
		
		request.setAttribute("alliancebean", alliancebean);
		
		forward.setRedirect(false);
		forward.setPath("adminAllianceDetail.jsp");
		return forward;
		
	}

}
