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
		String uri = req.getRequestURI();
		if (uri.equals("/question")) {
			for (int i = 1; i <= 4; i++) {
				req.getSession().setAttribute("qlist" + i, new QuestionDAO().getList(i, 5, 0));
			}
			req.getRequestDispatcher("/pubList.jsp").forward(req, resp);
		} else if (uri.equals("/pquestion")) {
			req.getSession().setAttribute("qlist", new QuestionDAO().getPrivateList(5, 0));
			req.getRequestDispatcher("/privateQuestion.jsp").forward(req,resp);
		}


	}
}
