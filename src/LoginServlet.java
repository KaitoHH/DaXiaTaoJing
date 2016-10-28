import Entity.User;

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
		PrintWriter out = resp.getWriter();
		out.print(req.getParameter("stuId") + " " + req.getParameter("stuPwd"));
		User user = new User();
		String phone = req.getParameter("phone");
		user.setPhone(phone);

		//TODO: 把user存到数据库里

		//String phone = user.getPhone();
	}
}
