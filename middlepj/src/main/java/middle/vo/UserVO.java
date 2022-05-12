package middle.vo;
//유저 VO1
public class UserVO {
	// 여기서 정의한 변수명과 반드시 속성명 name이 동일해야 합니다. 
	private String Uid;
	private String Upw;
	private String Uname;
	private String Utel;
	private String Uemail;
	private String Uadress;
	
	// (안에)선언하는 변수의 숫자를 다르게 선언 하고(ex: 아이디, 비번, 이름) 이걸 그대로 화면에 출력하기.. 아마도 20220512  
	public UserVO(String uid, String upw, String uname, String utel, String uemail, String uadress) {
		super();
		Uid = uid;
		Upw = upw;
		Uname = uname;
		Utel = utel;
		Uemail = uemail;
		Uadress = uadress;
	}
	public UserVO() {
	
	}
	@Override
	public String toString() {
		return "UserVO [Uid=" + Uid + ", Upw=" + Upw + ", Uname=" + Uname + ", Utel=" + Utel + ", Uemail=" + Uemail
				+ ", Uadress=" + Uadress + "]";
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

	
}
