package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Project: DaXiaTaoJing
 * Author: KaitoHH
 * Create Date: 2016/10/29
 * Description:
 * All rights reserved.
 */
public class ProfileServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		req.getSession().setAttribute("curUser", req.getSession().getAttribute("user"));
		String reqJsp = "/profileCenter.jsp";
		if (uri.equals("/user/setting")) {
			reqJsp = "/profileSetting.jsp";
		} else if (uri.equals("/user/concern")) {
			reqJsp = "/profileConcern.jsp";
		} else if (uri.equals("/user/letter")) {
			reqJsp = "/profilePM.jsp";
		}
		req.getRequestDispatcher(reqJsp).forward(req, resp);
	}
}
