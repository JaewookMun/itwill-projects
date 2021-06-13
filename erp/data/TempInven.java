package erp.data;

import java.util.ArrayList;

public class TempInven {
	public static final int CAMERA_INDEX=0;
	public static final int BATTERY_INDEX=1;
	public static final int BOARD_INDEX=2;
	public static final int SPONGE_INDEX=3;
	public static final int FABRIC_INDEX=4;
	
	public ArrayList<Inventory> cameraList;
	public ArrayList<Inventory> batteryList;
	public ArrayList<Inventory> boardList;
	public ArrayList<Inventory> spongeList;
	public ArrayList<Inventory> fabricList;
	public static TempInven instance = new TempInven();
	
	private TempInven() {
		
		Inventory itemCa1 = new Inventory("Camera-R30", "R3067", "S20201016R1", 200, 20201016,20301015);
		Inventory itemCa2 = new Inventory("Camera-R30", "R3067", "S20201016R1", 200, 20201016,20301015);
		Inventory itemCa3 = new Inventory("Camera-R30", "R3067", "S20201016R1", 200, 20201016,20301015);
		Inventory itemCa4 = new Inventory("Camera-R30", "R3067", "S20201016R1", 200, 20201016,20301015);
		Inventory itemCa5 = new Inventory("Camera-R30", "R3067", "S20201016R1", 200, 20201016,20301015);
		cameraList=new ArrayList<Inventory>();
		cameraList.add(itemCa1);
		cameraList.add(itemCa2);
		cameraList.add(itemCa3);
		cameraList.add(itemCa4);
		cameraList.add(itemCa5);
		
		Inventory itemBa1 = new Inventory("Battery-T21","T2166","S20210314T2",150,20210314,20310313);
		Inventory itemBa2 = new Inventory("Battery-T21","T2166","S20210314T2",150,20210314,20310313);
		Inventory itemBa3 = new Inventory("Battery-T21","T2166","S20210314T2",150,20210314,20310313);
		Inventory itemBa4 = new Inventory("Battery-T21","T2166","S20210314T2",150,20210314,20310313);
		Inventory itemBa5 = new Inventory("Battery-T21","T2166","S20210314T2",150,20210314,20310313);
		batteryList=new ArrayList<Inventory>();
		batteryList.add(itemBa1);
		batteryList.add(itemBa2);
		batteryList.add(itemBa3);
		batteryList.add(itemBa4);
		batteryList.add(itemBa5);
		
		Inventory itemBo1 = new Inventory("Board-D40","D4066","A20191223D2",300,20191223,20341222);
		Inventory itemBo2 = new Inventory("Board-D40","D4066","A20191223D2",300,20191223,20341222);
		Inventory itemBo3 = new Inventory("Board-D40","D4066","A20191223D2",300,20191223,20341222);
		Inventory itemBo4 = new Inventory("Board-D40","D4066","A20191223D2",300,20191223,20341222);
		Inventory itemBo5 = new Inventory("Board-D40","D4066","A20191223D2",300,20191223,20341222);
		boardList = new ArrayList<Inventory>();
		boardList.add(itemBo1);
		boardList.add(itemBo2);
		boardList.add(itemBo3);
		boardList.add(itemBo4);
		boardList.add(itemBo5);
		
		Inventory itemSp1 = new Inventory("Sponge-G80","G8083","A20191130G1",400,20191130,20341129);
		Inventory itemSp2 = new Inventory("Sponge-G80","G8083","A20191130G1",400,20191130,20341129);
		Inventory itemSp3 = new Inventory("Sponge-G80","G8083","A20191130G1",400,20191130,20341129);
		Inventory itemSp4 = new Inventory("Sponge-G80","G8083","A20191130G1",400,20191130,20341129);
		Inventory itemSp5 = new Inventory("Sponge-G80","G8083","A20191130G1",400,20191130,20341129);
		spongeList = new ArrayList<Inventory>();
		spongeList.add(itemSp1);
		spongeList.add(itemSp2);
		spongeList.add(itemSp3);
		spongeList.add(itemSp4);
		spongeList.add(itemSp5);
		
		
		Inventory itemFa1 = new Inventory("Fabric-C18","C1870","A20210421C2",600,20210421,20360420);
		Inventory itemFa2 = new Inventory("Fabric-C18","C1870","A20210421C2",600,20210421,20360420);
		Inventory itemFa3 = new Inventory("Fabric-C18","C1870","A20210421C2",600,20210421,20360420);
		Inventory itemFa4 = new Inventory("Fabric-C18","C1870","A20210421C2",600,20210421,20360420);
		Inventory itemFa5 = new Inventory("Fabric-C18","C1870","A20210421C2",600,20210421,20360420);
		fabricList = new ArrayList<Inventory>();
		fabricList.add(itemFa1);
		fabricList.add(itemFa2);
		fabricList.add(itemFa3);
		fabricList.add(itemFa4);
		fabricList.add(itemFa5);

	}
	
	// 0 ~ 4 : cameraList ~ FabricList
	public ArrayList<Inventory> getList(int index) {
		
		ArrayList<Inventory> temp = null;
		switch(index) {
		case 0: temp = cameraList; break;
		case 1: temp = batteryList; break;
		case 2: temp = boardList; break;
		case 3: temp = spongeList; break;
		case 4: temp = fabricList; break;
		
		}
		return temp;
	}
	
		
		
		
}
