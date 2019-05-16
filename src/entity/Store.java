package entity;

public class Store {
	private int SYS_MGR_ID,B_ID,P_ID,S_ID;

	public int getSYS_MGR_ID() {
		return SYS_MGR_ID;
	}

	public void setSYS_MGR_ID(int sYS_MGR_ID) {
		SYS_MGR_ID = sYS_MGR_ID;
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

	public Store(int sYS_MGR_ID, int b_ID, int p_ID, int s_ID) {
		super();
		SYS_MGR_ID = sYS_MGR_ID;
		B_ID = b_ID;
		P_ID = p_ID;
		S_ID = s_ID;
	}

	public Store() {
		super();
	}
}
