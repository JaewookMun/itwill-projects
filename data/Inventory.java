package erp.data;


/*
 * "제품명","제품코드","Lot No","수량(Qty)","생산일자","만료일자"
 * 
 * 제품코드 : 제품꼬리 + 제품명 첫글자의 ASCII코드값
 *  
 * Lot No : 생산장소+생산일자+제품명+생산파트(오전/오후)
 * 
 * 	생산장소 - [ 수원: S, 안산: A ]
 * 	생산일자 - [yyyymmdd]
 * 	제품명  - [ camera: R / battery: T / board: D / sponge: G / Fabric: C ]
 * 	생산파트 - [오전조: 1 / 오후조: 2]
 * 	e.g.) 2020년 수원공장에서 오전조에 의해 만들어진 카메라 제품의 lot id
 *     	   >>  S20201016R1
 */

public class Inventory {
	private String pName;
	private String pCode;
	private String lotId;
	private int qty;
	//mfgDate, exDate의 자료형은 jdbc 공부 후 변경가능
	private int mfgDate;
	private int exDate;
	
	public Inventory() {
		// TODO Auto-generated constructor stub
	}

	public Inventory(String pName, String pCode, String lotId, int qty, int mfgDate, int exDate) {
		this.pName = pName;
		this.pCode = pCode;
		this.lotId = lotId;
		this.qty = qty;
		this.mfgDate = mfgDate;
		this.exDate = exDate;
	}

	
	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getpCode() {
		return pCode;
	}

	public void setpCode(String pCode) {
		this.pCode = pCode;
	}

	public String getLotId() {
		return lotId;
	}

	public void setLotId(String lotId) {
		this.lotId = lotId;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public int getMfgDate() {
		return mfgDate;
	}

	public void setMfgDate(int mfgDate) {
		this.mfgDate = mfgDate;
	}

	public int getExDate() {
		return exDate;
	}

	public void setExDate(int exDate) {
		this.exDate = exDate;
	}
	
	@Override
	public String toString() {
		return pName+", "+pCode+", "+lotId+", "+qty+", "+mfgDate+", "+exDate;
	}
	
	
	
}
