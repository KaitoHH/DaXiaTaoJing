package servlet;

import database.UserDAO;
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
import java.util.regex.Pattern;

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
		User user = (User) req.getSession().getAttribute("user");
		String msg = "0";
		question.setTittle(req.getParameter("tittle"));
		question.setqType(Integer.valueOf(req.getParameter("type")));
		question.setContent(req.getParameter("content"));
		question.setUserId(user.getId());
		question.setPuserId(req.getParameter("puserId"));
		try {
			int pay = Integer.valueOf(req.getParameter("pay"));
			question.setPay(pay);
			if (pay > user.getPoint()) {
				msg = "你的积分不足！（你的积分: " + user.getPoint() + "）";
			} else {
				user.setPoint(user.getPoint() - pay);
			}
		} catch (NumberFormatException e) {
			msg = "悬赏金额输入错误！";
		}
		question.setTag(req.getParameter("tag"));
		try {
			question.validate();
		} catch (QuestionValidateException e) {
			msg = e.getMessage();
		}
		if (question.getPuserId() != "") {
			if (Pattern.compile("[0-9]*").matcher(question.getPuserId()).matches()) {
				if (new UserDAO().select(question.getPuserId()) == null) {
					msg = "指定回答者不存在!";
				}
			} else {
				msg = "回答者id输入错误！";
			}
		}
		int qid = 0;
		if (msg.equals("0")) {
			qid = new QuestionDAO().insert(question);
			new UserDAO().update(user);
			req.getSession().setAttribute("user", user);
		}
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("application/json");
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("msg", msg);
		jsonObject.put("id", qid);
		PrintWriter out = resp.getWriter();
		out.print(jsonObject);
		out.flush();
		out.close();


	}
}
