package board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/boardresponse")
public class BoardResponseServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int board_num = Integer.parseInt(request.getParameter("postId"));
		
		System.out.println(board_num);
		BoardService service = new BoardService();
		
		Board b = service.getData(board_num);
		
		
		request.setAttribute("data", b);
		
		
		
		request.getRequestDispatcher("WEB-INF/views/boarddetail.jsp").forward(request, response);
		
		
	}
	
}
