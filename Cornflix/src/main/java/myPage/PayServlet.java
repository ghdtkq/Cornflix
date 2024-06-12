package myPage;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/pay")
public class PayServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("WEB-INF/views/pay.jsp").forward(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		request.setCharacterEncoding("utf-8");
		
		String rating = request.getParameter("radio");
		
		/* 현재 날짜 받아오기*/
		LocalDateTime currentTime = LocalDateTime.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String formattedDateTime = currentTime.format(formatter);
		
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		RegService s = new RegService();
		
		s.upDate(formattedDateTime, rating, id);
		
		System.out.println(id);
		System.out.println(formattedDateTime);
		System.out.println(rating);
				
		session.removeAttribute("id");
		
		request.getRequestDispatcher("WEB-INF/views/login.jsp").forward(request, response);
		
	}
}