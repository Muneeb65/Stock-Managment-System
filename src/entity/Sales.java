package entity;

public class Sales {
	private int S_ID,B_ID,P_ID;
	private String S_DATE,S_QTY ;
	public int getS_ID() {
		return S_ID;
	}
	public void setS_ID(int s_ID) {
		S_ID = s_ID;
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
	public String getS_DATE() {
		return S_DATE;
	}
	public void setS_DATE(String s_DATE) {
		S_DATE = s_DATE;
	}
	public String getS_QTY() {
		return S_QTY;
	}
	public void setS_QTY(String s_QTY) {
		S_QTY = s_QTY;
	}
	public Sales(int s_ID, int b_ID, int p_ID, String s_DATE, String s_QTY) {
		super();
		S_ID = s_ID;
		B_ID = b_ID;
		P_ID = p_ID;
		S_DATE = s_DATE;
		S_QTY = s_QTY;
	}
	public Sales() {
		super();
	}
	
}
