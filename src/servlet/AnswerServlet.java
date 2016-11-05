package servlet;

import database.AnswerDAO;
import entity.Answer;
import entity.Question;
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
public class AnswerServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Answer answer = new Answer();
		answer.setQid(((Question) req.getSession().getAttribute("question")).getId());
		answer.setUserId(((User) req.getSession().getAttribute("user")).getId());
		answer.setContent(req.getParameter("answerArea"));
		answer.setAnonymous(req.getParameter("anonymous").equals("1") ? 1 : 0);
		String msg = "0";
		if (answer.getContent() == "") {
			msg = "error";
		} else {
			new AnswerDAO().insert(answer);
		}
		PrintWriter out = resp.getWriter();
		out.print(msg);
		out.flush();
		out.close();
	}
}
