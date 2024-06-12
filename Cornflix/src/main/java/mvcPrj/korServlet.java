package mvcPrj;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/kor")
public class korServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse respones) throws ServletException, IOException {
		
		CornflixService service = new CornflixService();
		ArrayList<Cornflix> list = service.getMember();
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("WEB-INF/views/kor.jsp").forward(request, respones);
	}
}
