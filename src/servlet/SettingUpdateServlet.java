package servlet;

import entity.User;
import database.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Project: DaXiaTaoJing
 * Author: KaitoHH
 * Create Date: 2016/11/4
 * Description:
 * All rights reserved.
 */
public class SettingUpdateServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = (User) req.getSession().getAttribute("user");
		user.setGender(Integer.valueOf(req.getParameter("gender")));
		user.setEmail(req.getParameter("email"));
		user.setIntroduction(req.getParameter("introduction"));
		user.setLongIntro(req.getParameter("longIntro"));
		new UserDAO().update(user);
		PrintWriter out = resp.getWriter();
		out.print(0);
		out.flush();
		out.close();
	}
}
