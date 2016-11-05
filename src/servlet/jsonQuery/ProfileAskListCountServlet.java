package servlet.jsonQuery;

import database.QuestionDAO;
import entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Project: DaXiaTaoJing
 * Author: KaitoHH
 * Create Date: 2016/11/5
 * Description:
 * All rights reserved.
 */
public class ProfileAskListCountServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int count = new QuestionDAO().getAskListCount(((User) req.getSession().getAttribute("curUser")).getId());
		PrintWriter out = resp.getWriter();
		out.print(count);
		out.flush();
		out.close();
	}
}
