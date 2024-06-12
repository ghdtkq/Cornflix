package mvcPrj;

import java.util.ArrayList;

public class CornflixService {
	CornflixDAO dao = new CornflixDAO();
	
	public ArrayList<Cornflix> getMember(){
		
		return dao.viewTbl();
	}
}
