package erp.data;


/*
 * "��ǰ��","��ǰ�ڵ�","Lot No","����(Qty)","��������","��������"
 * 
 * ��ǰ�ڵ� : ��ǰ���� + ��ǰ�� ù������ ASCII�ڵ尪
 *  
 * Lot No : �������+��������+��ǰ��+������Ʈ(����/����)
 * 
 * 	������� - [ ����: S, �Ȼ�: A ]
 * 	�������� - [yyyymmdd]
 * 	��ǰ��  - [ camera: R / battery: T / board: D / sponge: G / Fabric: C ]
 * 	������Ʈ - [������: 1 / ������: 2]
 * 	e.g.) 2020�� �������忡�� �������� ���� ������� ī�޶� ��ǰ�� lot id
 *     	   >>  S20201016R1
 */

public class Inventory {
	private String pName;
	private String pCode;
	private String lotId;
	private int qty;
	//mfgDate, exDate�� �ڷ����� jdbc ���� �� ���氡��
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
