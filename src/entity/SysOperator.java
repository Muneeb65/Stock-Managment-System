package entity;

public class SysOperator
{
	public SysOperator() {
		super();
	}
	private int SYS_OPR_ID;
	private int B_ID;
	private String SYS_OPR_USERNAME;
	private String SYS_OPR_PASSWORD;
	public SysOperator(int sYS_OPR_ID, int b_ID, String sYS_OPR_USERNAME, String sYS_OPR_PASSWORD) {
		super();
		SYS_OPR_ID = sYS_OPR_ID;
		B_ID = b_ID;
		SYS_OPR_USERNAME = sYS_OPR_USERNAME;
		SYS_OPR_PASSWORD = sYS_OPR_PASSWORD;
	}
	public int getSYS_OPR_ID() {
		return SYS_OPR_ID;
	}
	public void setSYS_OPR_ID(int sYS_OPR_ID) {
		SYS_OPR_ID = sYS_OPR_ID;
	}
	public int getB_ID() {
		return B_ID;
	}
	public void setB_ID(int b_ID) {
		B_ID = b_ID;
	}
	public String getSYS_OPR_USERNAME() {
		return SYS_OPR_USERNAME;
	}
	public void setSYS_OPR_USERNAME(String sYS_OPR_USERNAME) {
		SYS_OPR_USERNAME = sYS_OPR_USERNAME;
	}
	public String getSYS_OPR_PASSWORD() {
		return SYS_OPR_PASSWORD;
	}
	public void setSYS_OPR_PASSWORD(String sYS_OPR_PASSWORD) {
		SYS_OPR_PASSWORD = sYS_OPR_PASSWORD;
	}
	
}