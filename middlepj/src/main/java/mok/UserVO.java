package mok;

public class UserVO {
	private String Uid;
	private String Upw;
	private String Uname;
	private String Utel;
	private String Uemail;
	private String Uadress;
	
	public UserVO() {
		
	}
	
	public UserVO(String uid, String upw, String uname, String utel, String uemail, String uadress) {
		super();
		Uid = uid;
		Upw = upw;
		Uname = uname;
		Utel = utel;
		Uemail = uemail;
		Uadress = uadress;
	}
	public String getUid() {
		return Uid;
	}
	public void setUid(String uid) {
		Uid = uid;
	}
	public String getUpw() {
		return Upw;
	}
	public void setUpw(String upw) {
		Upw = upw;
	}
	public String getUname() {
		return Uname;
	}
	public void setUname(String uname) {
		Uname = uname;
	}
	public String getUtel() {
		return Utel;
	}
	public void setUtel(String utel) {
		Utel = utel;
	}
	public String getUemail() {
		return Uemail;
	}
	public void setUemail(String uemail) {
		Uemail = uemail;
	}
	public String getUadress() {
		return Uadress;
	}
	public void setUadress(String uadress) {
		Uadress = uadress;
	}
	@Override
	public String toString() {
		return "UserVO [Uid=" + Uid + ", Upw=" + Upw + ", Uname=" + Uname + ", Utel=" + Utel + ", Uemail=" + Uemail
				+ ", Uadress=" + Uadress + "]";
	}
	
}
