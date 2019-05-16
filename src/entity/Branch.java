package entity;

public class Branch {
	private int B_ID,P_ID,S_ID;
	private String B_NAME;
	public Branch() {
		super();
	}
	public Branch(int b_ID, int p_ID, int s_ID, String b_NAME) {
		super();
		B_ID = b_ID;
		P_ID = p_ID;
		S_ID = s_ID;
		B_NAME = b_NAME;
	}
	public int getB_ID() {
		return B_ID;
	}
	public void setB_ID(int b_ID) {
		B_ID = b_ID;
	}
	public int getP_ID() {
		return P_ID;
	}
	public void setP_ID(int p_ID) {
		P_ID = p_ID;
	}
	public int getS_ID() {
		return S_ID;
	}
	public void setS_ID(int s_ID) {
		S_ID = s_ID;
	}
	public String getB_NAME() {
		return B_NAME;
	}
	public void setB_NAME(String b_NAME) {
		B_NAME = b_NAME;
	}
}
