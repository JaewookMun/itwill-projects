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
 *
 *  [ ���� ������ ]
 * 
 * {"��) Camera-R30","R3067","S20201016R1","200","20201016","20301015"},
 * {"Battery-T21","T2166","S20210314T2","150","20210314","20310313"},
 * {"Board-D40","D4066","A20191223D2","300","20191223","20341222"},
 * {"Sponge-G80","G8083","A20191130G1","400","20191130","20341129"},
 * {"Sponge-G80","G8083","A20191130G1","400","20191130","20341129"},
 * {"Fabric-C18","C1870","A20210421C2","600","20210421","20360420"}
 * 
 * 
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
