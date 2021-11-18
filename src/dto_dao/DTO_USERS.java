package dto_dao;

public class DTO_USERS {
	private String id;
	private String pwd;
	private String name;
	private String email;
	private String birthday;
	private String phone;
	private int sex;

	public DTO_USERS(String id, String pwd, String name, String email, String birthday, String phone, int sex) {
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.birthday = birthday;
		this.phone = phone;
		this.sex = sex;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	
}

