package board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/board")
public class BoardServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BoardService service = new BoardService();
		ArrayList<Board> list = service.getMember();
		HttpSession session = request.getSession();
		session.setAttribute("list", list); 
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("WEB-INF/views/board.jsp").forward(request, response);
	}
}
