package board;

import java.util.ArrayList;

public class BoardService {

	BoardDAO dao = new BoardDAO();
	
	public ArrayList<Board> getMember(){
		return dao.selectAll();
	}
	
	public void RegisterBoard(Board board) {
		dao.insertMember2(board);
	}
	
	public Board getData(int boardnum) {
		
		Board b = dao.selectOne(boardnum);
		return b;
	}
}
