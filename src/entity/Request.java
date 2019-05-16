package entity;

public class Request {
	private int R_ID,B_ID;
	private String P_NAME,P_CATEGORY,P_PRICE,P_QOH;
	public int getR_ID() {
		return R_ID;
	}
	public void setR_ID(int r_ID) {
		R_ID = r_ID;
	}
	public int getB_ID() {
		return B_ID;
	}
	public void setB_ID(int b_ID) {
		B_ID = b_ID;
	}
	public String getP_NAME() {
		return P_NAME;
	}
	public void setP_NAME(String p_NAME) {
		P_NAME = p_NAME;
	}
	public Request() {
		super();
	}
	public Request(int r_ID, int b_ID, String p_NAME, String p_CATEGORY, String p_PRICE, String p_QOH) {
		super();
		R_ID = r_ID;
		B_ID = b_ID;
		P_NAME = p_NAME;
		P_CATEGORY = p_CATEGORY;
		P_PRICE = p_PRICE;
		P_QOH = p_QOH;
	}
	public String getP_CATEGORY() {
		return P_CATEGORY;
	}
	public void setP_CATEGORY(String p_CATEGORY) {
		P_CATEGORY = p_CATEGORY;
	}
	public String getP_PRICE() {
		return P_PRICE;
	}
	public void setP_PRICE(String p_PRICE) {
		P_PRICE = p_PRICE;
	}
	public String getP_QOH() {
		return P_QOH;
	}
	public void setP_QOH(String p_QOH) {
		P_QOH = p_QOH;
	}
	
}
