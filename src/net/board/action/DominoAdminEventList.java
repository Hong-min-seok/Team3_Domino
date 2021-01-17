package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.board.db.*;
import java.util.*;

public class DominoAdminEventList implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		EventDAO eventdao = new EventDAO();
		EventBean eventbean = new EventBean();
		
		List eventlist = eventdao.getEventList();
		request.setAttribute("eventlist", eventlist);
		
		forward.setRedirect(false);
		forward.setPath("./adminEventList.jsp");
		return forward;
		
	}

}
