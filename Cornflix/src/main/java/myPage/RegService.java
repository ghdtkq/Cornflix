package myPage;

import java.util.ArrayList;

public class RegService {
	RegDAO dao = new RegDAO();
	
	public ArrayList<Member> getMemberList(){
		
		ArrayList<Member> list = dao.selectAll();
		
		return list;
	}
	
	public void insertService(Member m) {
		
		dao.reginsrt(m);
	}
	
	
	public void upDate(String subscription_info, String rating,String member_id) {
		
		dao.updatePay(subscription_info, rating, member_id);
	}

	
}
