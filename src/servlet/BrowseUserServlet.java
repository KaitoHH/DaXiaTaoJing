package servlet;

import database.UserDAO;
import entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.regex.Pattern;

/**
 * Project: DaXiaTaoJing
 * Author: KaitoHH
 * Create Date: 2016/11/5
 * Description:
 * All rights reserved.
 */
public class BrowseUserServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI();
		String userId = url.substring(9);
		Pattern pattern = Pattern.compile("[0-9]*");
		if (pattern.matcher(userId).matches()) {
			User user = new UserDAO().select(userId);
			if (user != null) {
				req.getSession().setAttribute("curUser", user);
				req.getRequestDispatcher("/profileCenter.jsp").forward(req, resp);
			}
		}
	}
}
