package myPage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;
@WebServlet("/logpage")
public class LogServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		
		request.getRequestDispatcher("WEB-INF/views/login.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		LoginService s = new LoginService();
		
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		String check = s.loginCheck(id);
		
		
		if (pw.equals(check)) {
			
			HttpSession session = request.getSession();
			
			MypageService mys =new MypageService();
			Member m = mys.myPage(id);
			
			
			session.setAttribute("member_data", m);
			
			
			request.getRequestDispatcher("WEB-INF/views/index.jsp").forward(request, response);
			
		}else {
			
			request.setAttribute("errormsg", "아이디 혹은 비밀번호가 잘못됐습니다.");
			
			request.getRequestDispatcher("WEB-INF/views/login.jsp").forward(request, response);
		}
	}

	
	
}
