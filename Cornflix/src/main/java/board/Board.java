package board;

public class Board {
	int member_num;
	String member_category;
	String member_id;
	String member_device1;
	String member_device2;
	String member_device3;
	String member_detail;
	
	public int getMember_num() {
		return member_num;
	}
	public void setMember_num(int member_num) {
		this.member_num = member_num;
	}
	public String getMember_category() {
		return member_category;
	}
	public void setMember_category(String member_category) {
		this.member_category = member_category;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_device1() {
		return member_device1;
	}
	public void setMember_device1(String member_device1) {
		this.member_device1 = member_device1;
	}
	public String getMember_device2() {
		return member_device2;
	}
	public void setMember_device2(String member_device2) {
		this.member_device2 = member_device2;
	}
	public String getMember_device3() {
		return member_device3;
	}
	public void setMember_device3(String member_device3) {
		this.member_device3 = member_device3;
	}
	public String getMember_detail() {
		return member_detail;
	}
	public void setMember_detail(String member_detail) {
		this.member_detail = member_detail;
	}
	public Board(int member_num, String member_category, String member_id, String member_device1, String member_device2,
			String member_device3, String member_detail) {
		super();
		this.member_num = member_num;
		this.member_category = member_category;
		this.member_id = member_id;
		this.member_device1 = member_device1;
		this.member_device2 = member_device2;
		this.member_device3 = member_device3;
		this.member_detail = member_detail;
	}
	
	public Board(  String member_category, String member_id, String member_device1, String member_device2,
			String member_device3, String member_detail) {
		super();
	
		this.member_category = member_category;
		this.member_id = member_id;
		this.member_device1 = member_device1;
		this.member_device2 = member_device2;
		this.member_device3 = member_device3;
		this.member_detail = member_detail;
	}
	
	public Board() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Board [member_num=" + member_num + ", member_category=" + member_category + ", member_id=" + member_id
				+ ", member_device1=" + member_device1 + ", member_device2=" + member_device2 + ", member_device3="
				+ member_device3 + ", member_detail=" + member_detail + "]";
	}
	
	
	
	
	
}
