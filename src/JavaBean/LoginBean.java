package JavaBean;

public class LoginBean {
	private String userName;
	private String password;
	public String getUserName(){
		return userName;
	}
	public void setUserName(String username){
		this.userName=username;
	}
	
	public void setPassword(String Password){
		this.password=Password;
	}
	public String getPassword(){
		return password;
	}
}
