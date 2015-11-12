package test.mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Controller extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		String uri = request.getRequestURI();
		String view = "";
		
		if (uri.equals("/jsp/main.nhn")) {
			
			String msg = request.getParameter("msg");
			
			request.setAttribute("result", "전달된 파라미터");
			request.setAttribute("msg", msg);
			request.setAttribute("num", "100");
			
			HttpSession session = request.getSession();
			session.setAttribute("result", "javajava");
			
			view = "1112/main.jsp";
		} else if (uri.equals("/jsp/form.nhn")) {
			view = "1112/form.jsp";
		} else {
			view = "1112/index.jsp";
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	}
}
