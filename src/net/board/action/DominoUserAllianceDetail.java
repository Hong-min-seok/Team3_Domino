package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.AllianceBean;
import net.board.db.AllianceDAO;

public class DominoUserAllianceDetail implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("DominoUserAllianceDetail µé¾î¿È");
		
		ActionForward forward= new ActionForward();
		AllianceDAO alliancedao = new AllianceDAO();
		AllianceBean alliancebean = new AllianceBean();
		
		int list_num = Integer.parseInt(request.getParameter("list_num"));
		alliancebean = alliancedao.getAllianceDetail(list_num);
		
		request.setAttribute("alliancebean", alliancebean);
		
		forward.setRedirect(false);
		forward.setPath("userAllianceDetail.jsp");
		return forward;
		
	}

}
