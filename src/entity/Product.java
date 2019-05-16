package entity;

public class Product {
	private int P_ID,B_ID;
	private String P_NAME,P_CATEGORY,P_PRICE,P_QTY;
	public int getP_ID() {
		return P_ID;
	}
	public void setP_ID(int p_ID) {
		P_ID = p_ID;
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
	public String getP_QTY() {
		return P_QTY;
	}
	public void setP_QTY(String p_QTY) {
		P_QTY = p_QTY;
	}
	public Product(int p_ID, int b_ID, String p_NAME, String p_CATEGORY, String p_PRICE, String p_QTY) {
		super();
		P_ID = p_ID;
		B_ID = b_ID;
		P_NAME = p_NAME;
		P_CATEGORY = p_CATEGORY;
		P_PRICE = p_PRICE;
		P_QTY = p_QTY;
	}
	public Product() {
		super();
	}
	
}
