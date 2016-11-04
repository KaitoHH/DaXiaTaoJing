package servlet;

import entity.User;
import database.UserDAO;
import org.json.JSONObject;
import service.LoginService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Project: DaXiaTaoJing
 * Author: KaitoHH
 * Create Date: 2016/10/26
 * Description:
 * All rights reserved.
 */
public class LoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("stuId");
		String password = req.getParameter("stuPwd");
		LoginService loginService = new LoginService();
		boolean result;
		try {
			result = loginService.login(id, password);
		} catch (Exception e) {
			e.printStackTrace();
			result = false;
		}
		resp.setCharacterEncoding("utf-8");
		PrintWriter out = resp.getWriter();
		if (result) {
			out.print("0");
			User user = new User();
			user.setDept(loginService.getDept());
			user.setId(loginService.getId());
			user.setName(loginService.getName());
			user = new UserDAO().checkOrInsert(user);
			req.getSession().setAttribute("user", user);
		} else {
			out.print(loginService.getErrorMsg());
		}
		out.flush();
		out.close();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		JSONObject jsonObject = new JSONObject();
		User user = (User) req.getSession().getAttribute("user");
		String msg = "ok";
		if (user != null) {
			jsonObject.put("name", user.getName());
		} else {
			msg = "error";
		}
		jsonObject.put("msg", msg);
		resp.setContentType("application/json;charset=utf-8");
		resp.getWriter().print(jsonObject);
	}

}
