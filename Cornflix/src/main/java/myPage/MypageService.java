package myPage;

public class MypageService {
	
	RegDAO dao = new RegDAO();
	
	public Member myPage(String id) {
		
		Member m = dao.oneSelect(id);
		
		return m;
	}
	
	public void updatePassword(String id , String pw) {
		dao.updatePassword(id, pw);
	}
	
	public static void main(String[] args) {
		
		MypageService s =new MypageService();
		Member m = s.myPage("cjsgh963");
		
		System.out.println(m);
	}
}
