package servlet;

import database.AnswerDAO;
import database.UserDAO;
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
		User user = (User) req.getSession().getAttribute("user");
		Question question = (Question) req.getSession().getAttribute("question");
		Answer answer = new Answer();
		answer.setQid(question.getId());
		answer.setUserId(user.getId());
		answer.setContent(req.getParameter("answerArea"));
		try {
			answer.setAnonymous(req.getParameter("anonymous").equals("1") ? 1 : 0);
		} catch (Exception e) {
			user.setPoint(user.getPoint() + question.getPay());
		}
		String msg = "0";
		if (answer.getContent() == "") {
			msg = "error";
		} else {
			new AnswerDAO().insert(answer);
			new UserDAO().update(user);
			req.getSession().setAttribute("user", user);
		}
		PrintWriter out = resp.getWriter();
		out.print(msg);
		out.flush();
		out.close();
	}
}
