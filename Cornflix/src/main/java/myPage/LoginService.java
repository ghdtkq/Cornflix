package myPage;

public class LoginService {
	
	
	RegDAO dao = new RegDAO();
	
	public LoginService() {
		// TODO Auto-generated constructor stub
	}
	
	public String loginCheck(String id) {
		
		
		
		
		String pw = dao.loginCheck(id);
		
		return pw;
	}
}
