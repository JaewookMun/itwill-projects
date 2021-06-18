package erp.data;

/**
 * The {@code ProductDTO} class represents Inventory information which 
 * ERPsysApp.java is designed for.
 * <p>
 * [Fields to be used here]<p>
 * {@code "��ǰ��","��ǰ�ڵ�","Lot No","����(Qty)","��������","��������"}
 * <p>
 * [Definition]
 * <p>
 * ��ǰ�ڵ� : ��ǰ���� + ��ǰ�� ù������ ASCII�ڵ尪
 * <p> 
 * Lot No : �������+��������+��ǰ��+������Ʈ(����/����)<p>
 * 	������� - [ ����: S, �Ȼ�: A ]<p>
 * 	�������� - [yyyymmdd]<p>
 * 	��ǰ��  - [ camera: R / battery: T / board: D / sponge: G / Fabric: C ]<p>
 * 	������Ʈ - [������: 1 / ������: 2]<p>
 * 	ex) 2020�� �������忡�� �������� ���� ������� ī�޶� ��ǰ�� lot id��?  >>  S20201016R1
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
