package erp.gui;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Component;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;

import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JSplitPane;
import javax.swing.JTabbedPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.JToolBar;
import javax.swing.JTree;
import javax.swing.UIManager;
import javax.swing.event.TreeSelectionEvent;
import javax.swing.event.TreeSelectionListener;
import javax.swing.table.DefaultTableModel;
import javax.swing.tree.DefaultMutableTreeNode;

import erp.data.Inventory;
import erp.data.TempInven;

public class WorkPanel extends JPanel {
	private static final long serialVersionUID = 1L;
	
	private JButton logoutBtn, infoBtn, exitBtn;
	
	private JPanel westPanel;
	private DefaultMutableTreeNode registration, readNupdate;
	
	private String[] products= {"============","Camera-R30", "Battery-T21", "Board-D40", "Sponge-G80", "Fabric-C18"};
	private JComboBox<String> regComBox;
	private JTextField regFieldC1, regFieldC2, regFieldC3, regFieldC4, regFieldC5;
	private JButton addBtn, removeBtn, saveBtn;
	
	
	private JComboBox<String> readComBox;
	private JTextField readField;
	private JButton searchBtn, updateBtn, deleteBtn;
	
	private JButton tabX1, tabX2;
	
	
	@SuppressWarnings("serial")
	public WorkPanel() {
		super();
		
		setSize(ERPsysApp.DEFAULT_WIDTH, ERPsysApp.DEFAULT_HEIGHT);
		setLayout(new BorderLayout());
		
		
		//[tool bar] - 기본배경색 Color(240,240,240) 
		JToolBar toolbar = new JToolBar();
		toolbar.setFloatable(false);
		toolbar.setBackground(UIManager.getColor("ToolBar.highlight"));
		
		infoBtn = new JButton("정보");
		infoBtn.setFocusPainted(false);

		logoutBtn=new JButton("로그아웃");
		logoutBtn.setFocusPainted(false);

		exitBtn = new JButton("종료");
		exitBtn.setFocusPainted(false);

		
		JLabel title = new JLabel("재고관리 시스템");
		title.setFont(new Font("굴림", Font.BOLD | Font.ITALIC, 15));
		
		/*
		infoBtn = new JButton(new ImageIcon(getClass().getResource("/images/infoTest.png")));
		logoutBtn=new JButton(new ImageIcon(getClass().getResource("/images/logoutTest.png")));
		
		logoutBtn.setBounds(1150, 20, 85, 25);
		logoutBtn.setFont(new Font("굴림", Font.PLAIN, 13));
		logoutBtn.setBackground(new Color(100, 149, 237));
		*/
		
		toolbar.addSeparator();
		toolbar.add(infoBtn);
		toolbar.addSeparator();
		toolbar.add(logoutBtn);
		toolbar.addSeparator();
		toolbar.add(exitBtn);
		
			for(int i=0; i<96; i++) {
				toolbar.addSeparator();
			}
			
		toolbar.add(title);
		add(toolbar, BorderLayout.NORTH);
		

		
		/**  [메인화면 - 좌우분할]
		 *   좌측 : 메뉴바  /  우측 : 메인기능 
		 */
		
		JSplitPane split1st = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT);
		
		
		westPanel = new JPanel(new FlowLayout(FlowLayout.LEFT));
		JTree jTree;
		DefaultMutableTreeNode treeList = new DefaultMutableTreeNode("재고관리");
		
		registration = new DefaultMutableTreeNode("재고등록");
		readNupdate = new DefaultMutableTreeNode("재고조회/변경");
		
		treeList.add(registration);
		treeList.add(readNupdate);
		
		jTree = new JTree(treeList);
		jTree.setOpaque(false);
		
		westPanel.add(jTree);
		westPanel.setBackground(null);
		
		
		/**
		 *  [JPanels for Inventory Register]
		 *  
		 *  register tab : JSplitPane으로 상하분할
		 *  
		 *  상부 : inputPanel
		 *  	- gridPanel
		 *            in six regSubPanel
		 *  		- JLabel1 & JTextField1  (regLabel1 & regField1)
		 *  		-    ...
		 *  		- JLabel6 & JTextField6  (regLabel6 & regField6)
		 *  	
		 *  
		 *  하부 : tablePane
		 */
		
		JTabbedPane tabs = new JTabbedPane();
		tabs.setFont(new Font("Arial", Font.PLAIN, 14));
		
		
		//CRUD - 상하분할
		JSplitPane split2nd = new JSplitPane(JSplitPane.VERTICAL_SPLIT);
		
		JPanel inputPanel = new JPanel();
		JPanel regSubPanel1, regSubPanel2, regSubPanel3, regSubPanel4, regSubPanel5, regSubPanel6;
		JPanel gridPanel = new JPanel(new GridLayout(2, 0));
		
		
		JLabel regLabel1, regLabel2, regLabel3, regLabel4, regLabel5, regLabel6;
		
		
		regSubPanel1=new JPanel();
		regSubPanel2=new JPanel();
		regSubPanel3=new JPanel();
		regSubPanel4=new JPanel();
		regSubPanel5=new JPanel();
		regSubPanel6=new JPanel();
		
		//
		regLabel1 = new JLabel("제품명 :");
		regLabel2 = new JLabel("제품코드 :");
		regLabel3 = new JLabel("Lot No :");
		regLabel4 = new JLabel("수량 :");
		regLabel5 = new JLabel("생산일자 :");
		regLabel6 = new JLabel("만료일자 :");
		
		//regFieldC1 = new JTextField(15);
		regComBox = new JComboBox<String>(products);
		regComBox.setBackground(Color.WHITE);
		regFieldC1 = new JTextField(15);
		regFieldC1.setFocusable(false);
		regFieldC1.setBackground(null);
		regFieldC2 = new JTextField(15);
		regFieldC3 = new JTextField(15);
		regFieldC4 = new JTextField(15);
		regFieldC5 = new JTextField(15);
		
		//더 효율적인 방법이 존재할 것 같은데 잘 모르겠음..
		JTextField[] regFdArr = {regFieldC1, regFieldC2, regFieldC3, regFieldC4, regFieldC5};
		
		addBtn = new JButton("등록");
		removeBtn = new JButton("제거");
		saveBtn = new JButton("저장");
		
		addBtn.setFocusPainted(false);
		removeBtn.setFocusPainted(false);
		saveBtn.setFocusPainted(false);
		
		regSubPanel1.add(regLabel1);
		regSubPanel1.add(regComBox);
		
		regSubPanel2.add(regLabel2);
		regSubPanel2.add(regFieldC1);

		regSubPanel3.add(regLabel3);
		regSubPanel3.add(regFieldC2);
		
		regSubPanel4.add(regLabel4);
		regSubPanel4.add(regFieldC3);
		
		regSubPanel5.add(regLabel5);
		regSubPanel5.add(regFieldC4);
		
		regSubPanel6.add(regLabel6);
		regSubPanel6.add(regFieldC5);
		
		gridPanel.add(regSubPanel1);
		gridPanel.add(regSubPanel2);
		gridPanel.add(regSubPanel3);
		gridPanel.add(regSubPanel4);
		gridPanel.add(regSubPanel5);
		gridPanel.add(regSubPanel6);
		
		inputPanel.setLayout(new FlowLayout(FlowLayout.CENTER, 20,20));
		inputPanel.add(gridPanel);
		inputPanel.add(addBtn);
		inputPanel.add(removeBtn);
		inputPanel.add(saveBtn);
				
		
		/*
		 * 프로젝트 진행을 위한 임시정의 
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
		
		
		String[] regColumns = {"제품명","제품코드","Lot No","수량(Qty)","생산일자","만료일자"};
		//String[][] regRows = new String[0][6]; 
		String[][] regRows = {
				{"Battery-T21","T2166","S20210314T2","150","20210314","20310313"}
		}; 
		
		JScrollPane regTablePane;
		JTable regTable;
		DefaultTableModel regTableData;
		
		regTableData = new DefaultTableModel(regRows, regColumns) {
			@Override
			public boolean isCellEditable(int row, int column) {
				// TODO Auto-generated method stub
				return false;
			}
		};
		
		regTable = new JTable(regTableData);

		regTable.getTableHeader().setReorderingAllowed(false);
		regTable.getTableHeader().setResizingAllowed(false);
		
		regTable.setRowHeight(23);
		/*
		regTable.getColumnModel().getColumn(0).setPreferredWidth(100);
		regTable.getColumnModel().getColumn(1).setPreferredWidth(100);
		regTable.getColumnModel().getColumn(2).setPreferredWidth(100);
		regTable.getColumnModel().getColumn(3).setPreferredWidth(50);
		regTable.getColumnModel().getColumn(4).setPreferredWidth(100);
		regTable.getColumnModel().getColumn(5).setPreferredWidth(100);
		*/
		regTablePane = new JScrollPane(regTable);
		
		split2nd.setTopComponent(inputPanel);
		split2nd.setBottomComponent(regTablePane);
		split2nd.setDividerSize(8);
		split2nd.setBorder(BorderFactory.createEmptyBorder(20, 10, 10, 10));
		
		
		
		/**
		 *   [Panels for Inventory Search, Update and Delete]
		 *   
		 *   패널 3개로 상중하 분할
		 *   
		 *   (상부)
		 *    검색기능 컴포넌트 배치 패널
		 *   
		 *   (중부)
		 *	  table
		 *   
		 *   (하부)
		 *    수정기능 컴포넌트 배치 패널
		 *   
		 */
		
		JPanel readPanel = new JPanel(new BorderLayout(0, 15));
		readPanel.setBorder(BorderFactory.createEmptyBorder(20, 10, 10, 10));
		
		JPanel rTopPanel = new JPanel();
		
		
		//Top
		
		JLabel readLabel1, readLabel2;
		
		readLabel1=new JLabel("조회 대상: ");
		readLabel2=new JLabel("Lot No: ");
		
		String[] readProducts = {"================", "Total Inventory", "Camera-R30 (R3067)", "Battery-T21 (T2166)", 
				"Board-D40 (D4066)", "Sponge-G80 (G8083)", "Fabric-C18 (C1870)"};
		
		readComBox = new JComboBox<String>(readProducts) ;
		readComBox.setBackground(Color.WHITE);
		readField = new JTextField(15);
		
		//edit or delete the selected item after searching.
		searchBtn=new JButton("검색");
		updateBtn=new JButton("변경");
		deleteBtn=new JButton("삭제");
		searchBtn.setFocusPainted(false);
		updateBtn.setFocusPainted(false);
		deleteBtn.setFocusPainted(false);
		
		
		rTopPanel.add(readLabel1);
		rTopPanel.add(readComBox);
		rTopPanel.add(readLabel2);
		rTopPanel.add(readField);
		
		rTopPanel.add(searchBtn);
		rTopPanel.add(updateBtn);
		rTopPanel.add(deleteBtn);
		rTopPanel.setLayout(new FlowLayout(FlowLayout.CENTER, 10, 7));
		
		
		readPanel.add(rTopPanel, BorderLayout.NORTH);
		
		// 중앙 테이블
		String[] readColumns = {"제품명","제품코드","Lot No","수량(Qty)","생산일자","만료일자"};
		String[][] readRows = new String[0][6];
		
		JScrollPane readTablePane;
		JTable readTable;
		DefaultTableModel readTableData;
		
		readTableData = new DefaultTableModel(readRows, readColumns) {
			@Override
			public boolean isCellEditable(int row, int column) {
				// TODO Auto-generated method stub
				return false;
			}
		};
		
		readTable=new JTable(readTableData);
		readTable.getTableHeader().setReorderingAllowed(false);
		readTable.getTableHeader().setResizingAllowed(false);
		readTable.setRowHeight(23);
		
		
		readTablePane = new JScrollPane(readTable);
		
		readPanel.add(readTablePane, BorderLayout.CENTER);
		
		// Bottom
		
		
		
		// 전체탭 관리
		tabs.addTab("register", split2nd);
		tabs.addTab("read", readPanel);
		//tabs.addTab("update", new JLabel());
		//tabs.addTab("delete", new JLabel());
		
		JPanel tab1 = new JPanel();
		JLabel lbTab1 = new JLabel("재고등록  ");
		tabX1 = new JButton("X");
		//tabX1.setSize(5, 5);
		tabX1.setBorder(BorderFactory.createEtchedBorder());
		tabX1.setBorderPainted(false);
		tabX1.setForeground(Color.GRAY);
		tabX1.setContentAreaFilled(false);
		tabX1.setToolTipText("close this tab");
		
		tab1.add(lbTab1);
		tab1.add(tabX1);
		tab1.setOpaque(false);
		
		JPanel tab2 = new JPanel();
		JLabel lbTab2 = new JLabel("재고조회/변경  ");
		tabX2 = new JButton("X");
		//tabX2.setSize(5, 5);
		tabX2.setBorder(BorderFactory.createEtchedBorder());
		tabX2.setBorderPainted(false);
		tabX2.setForeground(Color.GRAY);
		tabX2.setContentAreaFilled(false);
		tabX2.setToolTipText("close this tab");
		
		tab2.add(lbTab2);
		tab2.add(tabX2);
		tab2.setOpaque(false);

		tabs.setTabComponentAt(0, tab1);
		tabs.setBackgroundAt(0, Color.WHITE);
	
		tabs.setTabComponentAt(1, tab2);
		tabs.setBackgroundAt(1, Color.WHITE);
		
		
		
		//tab에 대한 접근여부 설정
		//tabs.setEnabledAt(2, false);
		//tabs.setEnabledAt(3, false);
		//index번호로 JTabbedpane의 활성화 창 선택
		//tabs.setSelectedIndex(1);
		
		//tabs.setVisible(false);
		
		
		split1st.setLeftComponent(westPanel);
		split1st.setRightComponent(tabs);
		split1st.setDividerSize(5);
		add(split1st, BorderLayout.CENTER);

		
		/**
		 *  [이벤트 핸들러] - ( ) : 구현 예정
		 *  JToolbar func k : (info), logout, exit
		 *  westPanel func k
		 *  inputPanel func k : add, remove, (save), (update)
		 *  
		 */
		
		
		logoutBtn.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				new ERPsysApp("Margin - Inventory Management System");

			}
		});

		exitBtn.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				System.exit(0);
			}
			
		});
		
		jTree.addTreeSelectionListener(new TreeSelectionListener() {
			
			@Override
			public void valueChanged(TreeSelectionEvent e) {
				DefaultMutableTreeNode selectedNode = (DefaultMutableTreeNode)jTree.getLastSelectedPathComponent();
				if(selectedNode.toString().equals("재고등록")) {
					// find more efficient way
					tabs.setEnabledAt(0, true);
					tab1.setVisible(true);
					tabs.setBackgroundAt(0, Color.WHITE);
					for(Component c : split2nd.getComponents()) {
						c.setVisible(true);
					}
					
				} 
				
				if(selectedNode.toString().equals("재고조회/변경")) {
					
					tabs.setEnabledAt(1, true);
					tab2.setVisible(true);
					tabs.setBackgroundAt(1, Color.WHITE);
					for(Component c : readPanel.getComponents()) {
						c.setVisible(true);
					}
					
				} else 
					return;
			}
		});
		
		/*
		 * "재고등록");
		readNupdate = new DefaultMutableTreeNode("재고조회/변경")
		 */
		
		
		
		regComBox.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				switch (regComBox.getSelectedItem().toString()) {
				case "Camera-R30" 	: regFieldC1.setText("R3067"); break;
				case "Battery-T21" 	: regFieldC1.setText("T2166"); break;
				case "Board-D40" 	: regFieldC1.setText("D4066"); break;
				case "Sponge-G80" 	: regFieldC1.setText("G8083"); break;
				case "Fabric-C18" 	: regFieldC1.setText("C1870"); break;
				default : regFieldC1.setText(""); break;
				}
			}
		});
		
		// regFdarr = {regFieldC1, regFieldC2, regFieldC3, regFieldC4, regFieldC5, regFieldC6}
		// regFieldC1.getText(), regFieldC2.getText(), regFieldC3.getText(), regFieldC4.getText(), regFieldC5.getText(), regFieldC6.getText()
		addBtn.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				if(regComBox.getSelectedItem().toString().equals("============")
						&& regFdArr[0].getText().equals("")
						&& regFdArr[1].getText().equals("")
						&& regFdArr[2].getText().equals("")
						&& regFdArr[3].getText().equals("")
						&& regFdArr[4].getText().equals("")) {

					JOptionPane.showMessageDialog(null, "[에러] 입력된 값이 없습니다. 데이터를 입력해주세요.", "Error", JOptionPane.ERROR_MESSAGE);
					return;
					
				} else {

					Object[] regValues= new Object[regFdArr.length+1];
					
					regValues[0]=regComBox.getSelectedItem().toString();
					
					for(int i=0; i<regFdArr.length; i++) {
						regValues[i+1]=regFdArr[i].getText();
					}
					
					regTableData.addRow(regValues);
				}
			}
		});
		

		//int row = regTableData.getRowCount();
		//regTableData.removeRow(row-1);
		removeBtn.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				if(regTableData.getRowCount()==0) {
					JOptionPane.showMessageDialog(null, "[에러] 제거할 수 있는 항목이 없습니다.", "Error", JOptionPane.ERROR_MESSAGE);
					return;
				} else {
					regTableData.removeRow(regTableData.getRowCount()-1);
				}
			}
		});
		
		saveBtn.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				int dialogResult = JOptionPane.showOptionDialog(null, "등록한 내용을 서버에 저장하시겠습니까?", "Option Confirm" 
					, JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE, null, null, null);
				
				//JOption.YES_OPTION (==0)인 경우 시행할 코드 작성.
				if(dialogResult==0) {
					
					return;
				} else return;
			}
		});
		
		
		searchBtn.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				if(readTableData.getRowCount() != 0) {
					for(int i=0; i<readTableData.getRowCount(); i++) {
						readTableData.removeRow(i);
					}
				}
				
				if(readComBox.getSelectedItem().toString().equals("================") && readField.getText().equals("")) {
					JOptionPane.showMessageDialog(null, "[에러] 입력된 값이 없습니다. 데이터를 입력해주세요.", "Error", JOptionPane.ERROR_MESSAGE);
					return;
				} else if(readComBox.getSelectedItem().toString().equals("Total Inventory")) {
					
					TempInven ins = TempInven.instance;
					ArrayList<Inventory> camera = ins.getList(0);
					ArrayList<Inventory> battery = ins.getList(1);
					ArrayList<Inventory> board = ins.getList(2);
					ArrayList<Inventory> sponge = ins.getList(3);
					ArrayList<Inventory> fabric = ins.getList(4);
					
					Object[] readRows= new Object[6];
					
					for(int i=0; i<camera.size(); i++) {
						readRows[0]=camera.get(i).getpName();
						readRows[1]=camera.get(i).getpCode();
						readRows[2]=camera.get(i).getLotId();
						readRows[3]=camera.get(i).getQty();
						readRows[4]=camera.get(i).getMfgDate();
						readRows[5]=camera.get(i).getExDate();
						
						readTableData.addRow(readRows);
					}

					for(int i=0; i<battery.size(); i++) {
						readRows[0]=battery.get(i).getpName();
						readRows[1]=battery.get(i).getpCode();
						readRows[2]=battery.get(i).getLotId();
						readRows[3]=battery.get(i).getQty();
						readRows[4]=battery.get(i).getMfgDate();
						readRows[5]=battery.get(i).getExDate();
						
						readTableData.addRow(readRows);
					}
					
					for(int i=0; i<board.size(); i++) {
						readRows[0]=board.get(i).getpName();
						readRows[1]=board.get(i).getpCode();
						readRows[2]=board.get(i).getLotId();
						readRows[3]=board.get(i).getQty();
						readRows[4]=board.get(i).getMfgDate();
						readRows[5]=board.get(i).getExDate();
						
						readTableData.addRow(readRows);
					}
					
					for(int i=0; i<sponge.size(); i++) {
						readRows[0]=sponge.get(i).getpName();
						readRows[1]=sponge.get(i).getpCode();
						readRows[2]=sponge.get(i).getLotId();
						readRows[3]=sponge.get(i).getQty();
						readRows[4]=sponge.get(i).getMfgDate();
						readRows[5]=sponge.get(i).getExDate();
						
						readTableData.addRow(readRows);
					}
					
					for(int i=0; i<fabric.size(); i++) {
						readRows[0]=fabric.get(i).getpName();
						readRows[1]=fabric.get(i).getpCode();
						readRows[2]=fabric.get(i).getLotId();
						readRows[3]=fabric.get(i).getQty();
						readRows[4]=fabric.get(i).getMfgDate();
						readRows[5]=fabric.get(i).getExDate();
						
						readTableData.addRow(readRows);
					}
				}
				
			}
		});
		
		updateBtn.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				if(readTable.getSelectedRowCount()==0) {
					return;
				} else if (readTable.getSelectedRowCount()==1) {
					new UpdateDialog(null, "update");

				} else {
					
				}
			}
		});
		
		
		deleteBtn.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				if(readTable.getSelectedRow() == -1) {
					JOptionPane.showMessageDialog(null, "[에러] 삭제할 대상이 없습니다.", "Error", JOptionPane.ERROR_MESSAGE);
					return;
				} else {
					
					int dialogResult = JOptionPane.showConfirmDialog(null, "  선택된 대상을 서버에서 삭제하시겠습니까?    \n  [주의] 삭제된 내용은 복구가 불가능합니다.    \n", 
							"Confirm Message", JOptionPane.YES_NO_OPTION, JOptionPane.WARNING_MESSAGE, null);
					int[] index =null;
					
					if(dialogResult==JOptionPane.YES_OPTION) {
						if(readTable.getSelectedRowCount() == 1) {
							readTableData.removeRow(readTable.getSelectedRow());
						} else {
							//Q: 여러 줄일 떄 한번에 삭제되지 않는이유가 무엇인가??
							index = readTable.getSelectedRows();
							for(int i=0; i<readTable.getSelectedRows().length; i++) {
								readTableData.removeRow(index[i]);
							}
							return;
						}
						
					} else return;
					
				}
				
			}
		});
		
		tabX1.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				//tabs.remove(tabs.getSelectedIndex());
				tabs.setEnabledAt(0, false);
				tab1.setVisible(false);
				tabs.setBackgroundAt(0, null);
				for(Component c : split2nd.getComponents()) {
					c.setVisible(false);
				}
				
			}
		});
		
		tabX2.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				//tabs.remove(tabs.getSelectedIndex());				
				tabs.setEnabledAt(1, false);
				tab2.setVisible(false);
				tabs.setBackgroundAt(1, null);
				for(Component c : readPanel.getComponents()) {
					c.setVisible(false);
				}
			
			}
		});
		
		setVisible(true);
	} //WorkPanel 생성자
}
