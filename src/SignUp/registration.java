package SignUp;
import java.io.File;
import java.sql.*;

import jdbc.jdbcConncector;

public class registration  {
private String Email;
private String Password;
private String Name;
private String username;
private String occupation;
private String sex;
private String Address;
private File photo;
private String photopath, photoname, photosize;

public File getPhoto() {
	return photo;
}


public void setPhoto(File photo) {
	this.photo = photo;
}


public String execute(){
	if(getEmail().equals("")|| getPassword().equals("")|| getName().equals("")|| getUsername().equals("")|| getOccupation().equals("")|| getSex().equals("")|| getAddress().equals("")){
		return "error";
	}
	
	try{
		jdbcConncector CONN= new jdbcConncector();
		Connection CON=CONN.CONNECTION();
		PreparedStatement PST=CON.prepareStatement("INSERT INTO sellers(email, password, name, address, occupation, username, sex) " +
				"VALUES (?,?,?,?,?,?,?)");
		PST.setString(1, getEmail());
		PST.setString(2, getPassword());
		PST.setString(3, getName());
		PST.setString(4, getAddress());
		PST.setString(5, getOccupation());
		PST.setString(6, getUsername());
		PST.setString(7, getSex());
		System.out.println(getPhoto());
		PST.execute();
		System.out.printf("%s","USER "+ getUsername()+" SUCESSFULY REGISTERED!!");
		CON.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}
	return "success";
}


public String getEmail() {
	return Email;
}
public void setEmail(String email) {
	Email = email;
}
public String getPassword() {
	return Password;
}
public void setPassword(String password) {
	Password = password;
}
public String getName() {
	return Name;
}
public void setName(String name) {
	Name = name;
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
public String getSex() {
	return sex;
}
public void setSex(String sex) {
	this.sex = sex;
}
public String getAddress() {
	return Address;
}
public void setAddress(String address) {
	Address = address;
}
}
