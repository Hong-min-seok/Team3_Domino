package net.board.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.AllianceBean;
import net.board.db.AllianceDAO;

public class DominoAdminAllianceList implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		AllianceDAO alliancedao = new AllianceDAO();
		AllianceBean alliancebean = new AllianceBean();
		
		List alliancelist = alliancedao.getAllianceList();
		request.setAttribute("alliancelist", alliancelist);
		
		forward.setRedirect(false);
		forward.setPath("./adminAllianceList.jsp");
		return forward;
		
	}

}
