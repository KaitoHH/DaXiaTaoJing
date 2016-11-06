package servlet;

import database.QuestionDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Project: DaXiaTaoJing
 * Author: KaitoHH
 * Create Date: 2016/11/6
 * Description:
 * All rights reserved.
 */
public class IndexServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri=req.getRequestURI();
		if(uri.equals("/")){
			req.getSession().setAttribute("qlist",new QuestionDAO().getIndexList());
			req.getRequestDispatcher("/index.jsp").forward(req,resp);
		}
	}
}
