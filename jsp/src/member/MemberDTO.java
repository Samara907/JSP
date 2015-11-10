package member;

import java.sql.Timestamp;

public class MemberDTO {

	private String id;
	private String pw;
	private String name;
	private Timestamp reg_date;
	
	public String getId(){
 		return id; 
 	}
	public String getPw() {
		return pw;
	}
	public String getName(){
 		return name; 
 	}
	public Timestamp getReg_date(){
 		return reg_date; 
 	}
	
	public void setId (String id){
		this.id = id;
	}
	public void setPw (String pw) {
		this.pw = pw;
	}
	public void setName (String name){
		this.name = name;
	}
	public void setReg_date (Timestamp reg_date){
		this.reg_date = reg_date;
	}
}
