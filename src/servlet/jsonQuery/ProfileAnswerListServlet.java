package servlet.jsonQuery;

import database.QuestionDAO;
import entity.Question;
import entity.User;
import service.JsonService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * Project: DaXiaTaoJing
 * Author: KaitoHH
 * Create Date: 2016/11/6
 * Description:
 * All rights reserved.
 */
public class ProfileAnswerListServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int pageSize = Integer.valueOf(req.getParameter("pageSize"));
		int pageId = Integer.valueOf(req.getParameter("pageId"));
		List<Question> list = new QuestionDAO().getAnswerList(((User) req.getSession().getAttribute("curUser")).getId(), pageSize, pageId);
		resp.setContentType("application/json");
		resp.setCharacterEncoding("utf-8");
		PrintWriter out = resp.getWriter();
		out.print(JsonService.jsonQuestionQuery(list));
		out.flush();
		out.close();
	}
}
