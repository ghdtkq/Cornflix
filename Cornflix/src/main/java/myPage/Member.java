package myPage;

public class Member {
	String id;
	String pw;
	String name;
	String phone;
	String birth_date;
	String email;
	String subscription_info;
	String rating;
	
	public Member(String id, String pw, String name, String phone, String birth_date, String email,
			String subscription_info, String rating) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.phone = phone;
		this.birth_date = birth_date;
		this.email = email;
		this.subscription_info = subscription_info;
		this.rating = rating;
	}
	
	
	public Member(String id, String pw, String name, String phone, String birth_date, String email) {
		
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.phone = phone;
		this.birth_date = birth_date;
		this.email = email;
	}
	
	


	public Member(String id, String pw) {
		
		this.id = id;
		this.pw = pw;
	}



	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBirth_date() {
		return birth_date;
	}

	public void setBirth_date(String birth_date) {
		this.birth_date = birth_date;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSubscription_info() {
		return subscription_info;
	}

	public void setSubscription_info(String subscription_info) {
		this.subscription_info = subscription_info;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", pw=" + pw + ", name=" + name + ", phone=" + phone + ", birth_date=" + birth_date
				+ ", email=" + email + ", subscription_info=" + subscription_info + ", rating=" + rating + "]";
	}
	
	public Member() {
		// TODO Auto-generated constructor stub
	}
}
