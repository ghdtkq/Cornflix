package mvcPrj;

public class Cornflix {
	
	int movie_code;
	String movie_title;
	String movie_nation;
	String movie_img;
	String movie_genre;
	String movie_age;
	String movie_story;
	String movie_director;
	String movie_cast;
	String movie_date;
	int movie_views;
	String movie_company;
	public int getMovie_code() {
		return movie_code;
	}
	public void setMovie_code(int movie_code) {
		this.movie_code = movie_code;
	}
	public String getMovie_title() {
		return movie_title;
	}
	public void setMovie_title(String movie_title) {
		this.movie_title = movie_title;
	}
	public String getMovie_nation() {
		return movie_nation;
	}
	public void setMovie_nation(String movie_nation) {
		this.movie_nation = movie_nation;
	}
	public String getMovie_img() {
		return movie_img;
	}
	public void setMovie_img(String movie_img) {
		this.movie_img = movie_img;
	}
	public String getMovie_genre() {
		return movie_genre;
	}
	public void setMovie_genre(String movie_genre) {
		this.movie_genre = movie_genre;
	}
	public String getMovie_age() {
		return movie_age;
	}
	public void setMovie_age(String movie_age) {
		this.movie_age = movie_age;
	}
	public String getMovie_story() {
		return movie_story;
	}
	public void setMovie_story(String movie_story) {
		this.movie_story = movie_story;
	}
	public String getMovie_director() {
		return movie_director;
	}
	public void setMovie_director(String movie_director) {
		this.movie_director = movie_director;
	}
	public String getMovie_cast() {
		return movie_cast;
	}
	public void setMovie_cast(String movie_cast) {
		this.movie_cast = movie_cast;
	}
	public String getMovie_date() {
		return movie_date;
	}
	public void setMovie_date(String movie_date) {
		this.movie_date = movie_date;
	}
	public int getMovie_views() {
		return movie_views;
	}
	public void setMovie_views(int movie_views) {
		this.movie_views = movie_views;
	}
	public String getMovie_company() {
		return movie_company;
	}
	public void setMovie_company(String movie_company) {
		this.movie_company = movie_company;
	}
	@Override
	public String toString() {
		return "Cornflix [movie_code=" + movie_code + ", movie_title=" + movie_title + ", movie_nation=" + movie_nation
				+ ", movie_img=" + movie_img + ", movie_genre=" + movie_genre + ", movie_age=" + movie_age
				+ ", movie_story=" + movie_story + ", movie_director=" + movie_director + ", movie_cast=" + movie_cast
				+ ", movie_date=" + movie_date + ", movie_views=" + movie_views + ", movie_company=" + movie_company
				+ "]";
	}
	public Cornflix(int movie_code, String movie_title, String movie_nation, String movie_img, String movie_genre,
			String movie_age, String movie_story, String movie_director, String movie_cast, String movie_date,
			int movie_views, String movie_company) {
		super();
		this.movie_code = movie_code;
		this.movie_title = movie_title;
		this.movie_nation = movie_nation;
		this.movie_img = movie_img;
		this.movie_genre = movie_genre;
		this.movie_age = movie_age;
		this.movie_story = movie_story;
		this.movie_director = movie_director;
		this.movie_cast = movie_cast;
		this.movie_date = movie_date;
		this.movie_views = movie_views;
		this.movie_company = movie_company;
	}
	
	
	
	
}
