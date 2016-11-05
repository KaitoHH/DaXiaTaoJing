package servlet.jsonQuery;

import database.QuestionDAO;
import entity.Question;
import entity.User;
import org.json.JSONArray;
import org.json.JSONObject;

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
 * Create Date: 2016/11/5
 * Description:
 * All rights reserved.
 */
public class ProfileAskListServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int pageSize = Integer.valueOf(req.getParameter("pageSize"));
		int pageId = Integer.valueOf(req.getParameter("pageId"));
		List<Question> list = new QuestionDAO().getAskList(((User) req.getSession().getAttribute("user")).getId(), pageSize, pageId);
		JSONArray array = new JSONArray();
		for (Question question : list) {
			JSONObject q = new JSONObject();
			q.put("id", question.getId());
			q.put("looktimes", 100);
			q.put("tittle", question.getTittle());
			q.put("subject", "_subject");
			q.put("numberOfAnswers", 3);
			q.put("numberOfFollowers", 4);
			array.put(q);
		}
		resp.setContentType("application/json");
		resp.setCharacterEncoding("utf-8");
		PrintWriter out = resp.getWriter();
		out.print(array);
		out.flush();
		out.close();
	}
}
