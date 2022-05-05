package erp.data;

/**
 * The {@code ProductDTO} class represents Inventory information which 
 * ERPsysApp.java is designed for.
 * <p>
 * [Fields to be used here]<p>
 * {@code "제품명","제품코드","Lot No","수량(Qty)","생산일자","만료일자"}
 * <p>
 * [Definition]
 * <p>
 * 제품코드 : 제품꼬리 + 제품명 첫글자의 ASCII코드값
 * <p> 
 * Lot No : 생산장소+생산일자+제품명+생산파트(오전/오후)<p>
 * 	생산장소 - [ 수원: S, 안산: A ]<p>
 * 	생산일자 - [yyyymmdd]<p>
 * 	제품명  - [ camera: R / battery: T / board: D / sponge: G / Fabric: C ]<p>
 * 	생산파트 - [오전조: 1 / 오후조: 2]<p>
 * 	ex) 2020년 수원공장에서 오전조에 의해 만들어진 카메라 제품의 lot id는?  >>  S20201016R1
 *     	   
 * @author Margin
 */

public class ProductDTO {
	private String pName;
	private String pCode;
	private String lotNo;
	private int qty;
	private String mfgDate;
	private String exDate;
	
	public ProductDTO() {
		// TODO Auto-generated constructor stub
	}

	
	public ProductDTO(String pName, String pCode, String lotNo, int qty, String mfgDate, String exDate) {
		super();
		this.pName = pName;
		this.pCode = pCode;
		this.lotNo = lotNo;
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

	public String getLotNo() {
		return lotNo;
	}

	public void setLotNo(String lotNo) {
		this.lotNo = lotNo;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public String getMfgDate() {
		return mfgDate;
	}

	public void setMfgDate(String mfgDate) {
		this.mfgDate = mfgDate;
	}

	public String getExDate() {
		return exDate;
	}

	public void setExDate(String exDate) {
		this.exDate = exDate;
	}
	
}
