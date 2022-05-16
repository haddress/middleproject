package middle.vo;

public class UserOrderVO {
private String UorderCode;
private String UorderDate;
private String UorderAddress;
private String UorderName;
private String UorderTel;




public UserOrderVO() {
}
public UserOrderVO(String uorderCode, String uorderDate, String uorderAddress, String uorderName, String uorderTel) {
	super();
	UorderCode = uorderCode;
	UorderDate = uorderDate;
	UorderAddress = uorderAddress;
	UorderName = uorderName;
	UorderTel = uorderTel;
}
public String getUorderCode() {
	return UorderCode;
}
public void setUorderCode(String uorderCode) {
	UorderCode = uorderCode;
}
public String getUorderDate() {
	return UorderDate;
}
public void setUorderDate(String uorderDate) {
	UorderDate = uorderDate;
}
public String getUorderAddress() {
	return UorderAddress;
}
public void setUorderAddress(String uorderAddress) {
	UorderAddress = uorderAddress;
}
public String getUorderName() {
	return UorderName;
}
public void setUorderName(String uorderName) {
	UorderName = uorderName;
}
public String getUorderTel() {
	return UorderTel;
}
public void setUorderTel(String uorderTel) {
	UorderTel = uorderTel;
}
@Override
public String toString() {
	return "UserOrderVO [UorderCode=" + UorderCode + ", UorderDate=" + UorderDate + ", UorderAddress=" + UorderAddress
			+ ", UorderName=" + UorderName + ", UorderTel=" + UorderTel + "]";
}



}
