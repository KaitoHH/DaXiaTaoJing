package servlet;

import entity.Question;
import entity.User;
import entity.exception.QuestionValidateException;
import database.QuestionDAO;
import org.json.JSONObject;

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
		int qid = new QuestionDAO().insert(question);


		resp.setCharacterEncoding("utf-8");
		resp.setContentType("application/json");
		JSONObject jsonObject = new JSONObject();
		jsonObject.append("msg", msg);
		jsonObject.append("id", qid);
		PrintWriter out = resp.getWriter();
		out.print(jsonObject);
		out.flush();
		out.close();


	}
}
