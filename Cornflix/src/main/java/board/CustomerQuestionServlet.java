package board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.Board;
import board.BoardService;

@WebServlet("/customerquestion")
public class CustomerQuestionServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("WEB-INF/views/customerquestion.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
	 
		String member_category = request.getParameter("radio01");
		String member_id = request.getParameter("text1");
		String member_device1 = request.getParameter("select1");
		String member_device2 = request.getParameter("select2");
		String member_device3 = request.getParameter("select3");
		String member_detail = request.getParameter("textarea1");
		
		
		Board board = new Board( member_category,member_id,member_device1,member_device2,member_device3,member_detail);
			
		
		System.out.println(board);
		
		
		BoardService service = new BoardService();
		service.RegisterBoard(board);
		
		
		response.sendRedirect("/mvcProject/board");
		
		
		
	}
}
