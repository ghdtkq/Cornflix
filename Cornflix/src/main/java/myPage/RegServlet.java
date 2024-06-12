package myPage;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;

@WebServlet("/regpage")
public class RegServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RegService s = new RegService();
		ArrayList<Member> list = s.getMemberList();
		JSONArray arr = new JSONArray();
		
		for(Member m : list ) {
			
			arr.put(m.getId());
		}

		request.setAttribute("id", arr);
		
		
		request.getRequestDispatcher("WEB-INF/views/reg.jsp").forward(request, response);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		request.setCharacterEncoding("utf-8");
		
		RegService s = new RegService();
		
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String date = request.getParameter("date");
		String email = request.getParameter("email");
		
		HttpSession session = request.getSession();
		session.setAttribute("id", id);	
		
		
		System.out.println(id);		
		System.out.println(pw);		
		System.out.println(name);		
		System.out.println(phone);		
		System.out.println(date);		
		System.out.println(email);
		
		
		s.insertService(new Member(id,pw,name,phone,date,email));
		
		
		request.getRequestDispatcher("WEB-INF/views/pay.jsp").forward(request, response);
		
		
		
	}
}
