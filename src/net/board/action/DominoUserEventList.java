package net.board.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.EventBean;
import net.board.db.EventDAO;

public class DominoUserEventList implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		EventDAO eventdao = new EventDAO();
		EventBean eventbean = new EventBean();
		
		List eventlist = eventdao.getEventList();
		request.setAttribute("eventlist", eventlist);
		
		forward.setRedirect(false);
		forward.setPath("./userEventList.jsp");
		return forward;
		
	}

}
