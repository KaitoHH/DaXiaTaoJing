package servlet;

import Entity.Question;
import Entity.User;
import Entity.exception.QuestionValidateException;
import database.QuestionDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Project: DaXiaTaoJing
 * Author: KaitoHH
 * Create Date: 2016/11/3
 * Description:
 * All rights reserved.
 */
public class postQuestionServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Question question = new Question();
		String msg = "0";
		question.setTittle(req.getParameter("tittle"));
		question.setqType(Integer.valueOf(req.getParameter("type")));
		question.setContent(req.getParameter("content"));
		question.setUserId(((User) req.getSession().getAttribute("user")).getId());
		try {
			question.setPay(Integer.valueOf(req.getParameter("pay")));
		} catch (NumberFormatException e) {
			msg = "悬赏金额输入错误！";
		}
		question.setTag(req.getParameter("tag"));

		try {
			question.validate();
		} catch (QuestionValidateException e) {
			msg = e.getMessage();
		}
		resp.setCharacterEncoding("utf-8");
		PrintWriter out = resp.getWriter();
		out.print(msg);
		out.flush();
		out.close();

		new QuestionDAO().insert(question);
	}
}
