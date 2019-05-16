package entity;

public class Address {
	private int SYS_OPR_ID;
	private String CITY,STATE,STREET,ZIP,CNIC;
	private int B_ID;
	public Address(int sYS_OPR_ID, String cITY, String sTATE, String sTREET, String zIP, String cNIC, int b_ID) {
		super();
		SYS_OPR_ID = sYS_OPR_ID;
		CITY = cITY;
		STATE = sTATE;
		STREET = sTREET;
		ZIP = zIP;
		CNIC = cNIC;
		B_ID = b_ID;
	}
	public int getSYS_OPR_ID() {
		return SYS_OPR_ID;
	}
	public void setSYS_OPR_ID(int sYS_OPR_ID) {
		SYS_OPR_ID = sYS_OPR_ID;
	}
	public String getCITY() {
		return CITY;
	}
	public void setCITY(String cITY) {
		CITY = cITY;
	}
	public String getSTATE() {
		return STATE;
	}
	public void setSTATE(String sTATE) {
		STATE = sTATE;
	}
	public String getSTREET() {
		return STREET;
	}
	public void setSTREET(String sTREET) {
		STREET = sTREET;
	}
	public String getZIP() {
		return ZIP;
	}
	public void setZIP(String zIP) {
		ZIP = zIP;
	}
	public String getCNIC() {
		return CNIC;
	}
	public void setCNIC(String cNIC) {
		CNIC = cNIC;
	}
	public int getB_ID() {
		return B_ID;
	}
	public Address() {
		super();
	}
	public void setB_ID(int b_ID) {
		B_ID = b_ID;
	}
}
