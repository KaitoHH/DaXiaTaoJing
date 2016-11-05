package servlet;

import entity.Question;
import database.QuestionDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Project: DaXiaTaoJing
 * Author: KaitoHH
 * Create Date: 2016/11/4
 * Description:
 * All rights reserved.
 */
public class PubQListServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Question> list = new QuestionDAO().getList(1);
		req.getSession().setAttribute("qlist", list);
		req.getRequestDispatcher("/pubList.jsp").forward(req, resp);
	}
}
