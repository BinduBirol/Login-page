package login;
import java.sql.*;
import jdbc.jdbcConncector;

public class profile {
	
	String email;
	String password;
	String Name;
	String Address;
	String occupation;
	String username;
	String sex;


	public String getSex() {
		return sex;
	}


	public void setSex(String sex) {
		this.sex = sex;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getOccupation() {
		return occupation;
	}


	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}


	public String getAddress() {
		return Address;
	}


	public String execute() throws SQLException{
	
		try{
	
			jdbcConncector CONN= new jdbcConncector();
			Connection CON=CONN.CONNECTION();
			Statement ST=CON.createStatement();
			
	ResultSet RS=ST.executeQuery("select * from sellers where email='"+getEmail()+"' ");
	
	while(RS.next()){
		String userEmail= RS.getString("email");
		String userPassword=RS.getString("password");
		String userName= RS.getString("name");
		String userAddress= RS.getString("address");
		String userOccupation=RS.getString("occupation");
		String userUsername=RS.getString("username");
		String userSex=RS.getString("sex");
		
		
		setName(userName);
		setEmail(userEmail);
		setAddress(userAddress);
		setOccupation(userOccupation);
		setUsername(userUsername);
		setSex(userSex);
		System.out.println(userEmail);
		System.out.println(userPassword);
		
		if(getEmail().equals(userEmail)&&getPassword().equals(userPassword)){
			return "success";
		}
	}
	
	
	}catch(Exception e){
		e.printStackTrace();
	}
		return "error";
	}


	public String getName() {
		return Name;
	}


	public void setName(String name) {
		Name = name;
	}


	public void setAddress(String address) {
		Address = address;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
