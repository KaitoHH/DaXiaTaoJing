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
		String reqJsp = "/profileCenter.jsp";
		if (uri.equals("/user/setting")) {
			reqJsp = "/profileSetting.jsp";
		}
		req.getRequestDispatcher(reqJsp).forward(req, resp);
	}
}
