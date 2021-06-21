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
import java.util.List;
import java.util.Vector;
import java.util.regex.Pattern;

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
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.JToolBar;
import javax.swing.JTree;
import javax.swing.UIManager;
import javax.swing.border.LineBorder;
import javax.swing.event.TreeSelectionEvent;
import javax.swing.event.TreeSelectionListener;
import javax.swing.table.DefaultTableModel;
import javax.swing.tree.DefaultMutableTreeNode;

import erp.data.ProductDAO;
import erp.data.ProductDTO;

public class WorkPanel extends JPanel {
	private static final long serialVersionUID = 1L;
	
	protected JButton logoutBtn;
	private JButton infoBtn, exitBtn;
	
	private DefaultMutableTreeNode registration, readNupdate;
	
	private JComboBox<String> regComBox;
	
	/**
	 * to be transfer into {@code ProductDTO} class<p>
	 * 
	 * {@code regFieldC1} is for product code, {@code pCode} <br>
	 * {@code regFieldC2} is for lot number, {@code lotNo} <br>
	 * {@code regFieldC3} is for quantity, {@code qty}<br>
	 * {@code regFieldC4} is for manufacturing date, {@code mfgDate} <br>
	 * {@code regFieldC5} is for expiration date, {@code exDate} <br>
	 */
	private JTextField regFieldC1, regFieldC2, regFieldC3, regFieldC4, regFieldC5;
	private JButton addBtn, removeBtn, saveBtn;
	
	private JComboBox<String> readComBox;
	private JTextField readField;
	private JButton searchBtn, updateBtn, deleteBtn;
	
	private UpdateDialog popPnl;
	
	/** ��ǰ�� ����ϱ� ���� �䱸�Ǵ� ���� ���� */
	public static final int REQ_REGISTRATION_INFO_NO = 6;
	
	public static final int PRODUCT_NAME_INDEX = 0;
	public static final int PRODUCT_CODE_INDEX = 1;
	/** lotNo is {@code Primary Key} of {@code TOTAL_PRODUCTS} table */
	public static final int LOTNO_INDEX = 2;
	public static final int QUANTITY_INDEX = 3;
	public static final int MANUFACTURING_DATE_INDEX = 4;
	public static final int EXPIRATION_DATE_INDEX = 5;
	
	private DefaultTableModel regTableData, readTableData;
	
	private JButton tabX1, tabX2;
	
	
	@SuppressWarnings("serial")
	public WorkPanel() {
		super();
		
		setSize(ERPsysApp.DEFAULT_WIDTH, ERPsysApp.DEFAULT_HEIGHT);
		
		setLayout(new BorderLayout());
		
		
		//[tool bar] - �⺻���� Color(240,240,240) 
		JToolBar toolbar = new JToolBar();
		toolbar.setFloatable(false);
		toolbar.setBackground(UIManager.getColor("ToolBar.highlight"));
		
		infoBtn = new JButton("����");
		infoBtn.setFocusPainted(false);

		logoutBtn=new JButton("�α׾ƿ�");
		logoutBtn.setFocusPainted(false);

		exitBtn = new JButton("����");
		exitBtn.setFocusPainted(false);

		
		JLabel title = new JLabel("������ �ý���");
		title.setFont(new Font("����", Font.BOLD | Font.ITALIC, 15));
		
		
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
		

		
		/**  [����ȭ�� - �¿����]
		 *   ���� : �޴���  /  ���� : ���α�� 
		 */
		
		JSplitPane firstSplit = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT);
		
		JPanel westPanel = new JPanel(new BorderLayout());
		JPanel westTop = new JPanel(new FlowLayout(FlowLayout.LEFT));
		JPanel westMiddle = new JPanel(new FlowLayout(FlowLayout.LEFT));
		westMiddle.setBorder(new LineBorder(Color.LIGHT_GRAY));
		JPanel westBottom = new JPanel();
		JPanel westWest = new JPanel();
		JPanel westEast = new JPanel();
		
		
		JTextArea invenInfo = new JTextArea();
		invenInfo.setText("\n  Inventory Information  ");
		invenInfo.setFont(new Font("Arial", Font.BOLD, 12));
		invenInfo.setBackground(null);
		invenInfo.setEditable(false);
		
		JTree jTree;
		DefaultMutableTreeNode treeList = new DefaultMutableTreeNode("������");
		
		registration = new DefaultMutableTreeNode("�����");
		readNupdate = new DefaultMutableTreeNode("�����ȸ/����");
		
		treeList.add(registration);
		treeList.add(readNupdate);
		
		jTree = new JTree(treeList);
		//jTree.setOpaque(false);
		
		JTextArea botBlank = new JTextArea();
		botBlank.setText("\n�� copyright. Margin");
		botBlank.setFont(new Font(null, Font.BOLD, 13));
		botBlank.setBackground(null);
		botBlank.setEnabled(false);
		
		westTop.add(invenInfo);
		westMiddle.add(jTree);
		westMiddle.setBackground(Color.WHITE);
		westBottom.add(botBlank);
		
		/*
		westPanel.add(jTree);
		westPanel.setBackground(null);
		*/
		
		westPanel.add(westTop, BorderLayout.NORTH);
		westPanel.add(westMiddle, BorderLayout.CENTER);
		westPanel.add(westBottom, BorderLayout.SOUTH);
		westPanel.add(westWest, BorderLayout.WEST);
		westPanel.add(westEast, BorderLayout.EAST);
		
		/**
		 *  [JPanels for Inventory Register]
		 *  
		 *  register tab : JSplitPane���� ���Ϻ���
		 *  
		 *  ��� : inputPanel
		 *  	- gridPanel
		 *            in six regSubPanel
		 *  		- JLabel1 & JTextField1  (regLabel1 & regField1)
		 *  		-    ...
		 *  		- JLabel6 & JTextField6  (regLabel6 & regField6)
		 *  	
		 *  
		 *  �Ϻ� : tablePane
		 */
		
		JTabbedPane tabs = new JTabbedPane();
		tabs.setFont(new Font("Arial", Font.PLAIN, 14));
		
		
		//CRUD - ���Ϻ���
		JSplitPane regPane = new JSplitPane(JSplitPane.VERTICAL_SPLIT);
		
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
		regLabel1 = new JLabel("��ǰ�� :");
		regLabel2 = new JLabel("��ǰ�ڵ� :");
		regLabel3 = new JLabel("Lot No :");
		regLabel4 = new JLabel("���� :");
		regLabel5 = new JLabel("�������� :");
		regLabel6 = new JLabel("�������� :");
		
		//regFieldC1 = new JTextField(15);
		String[] products= {"============","Camera-R30", "Battery-T21", "Board-D40", "Sponge-G80", "Fabric-C18"};
		regComBox = new JComboBox<String>(products);
		regComBox.setBackground(Color.WHITE);
		regFieldC1 = new JTextField(15);
		regFieldC1.setFocusable(false);
		regFieldC1.setBackground(null);
		regFieldC2 = new JTextField(15);
		regFieldC3 = new JTextField(15);
		regFieldC4 = new JTextField(15);
		regFieldC5 = new JTextField(15);
		
		addBtn = new JButton("���");
		removeBtn = new JButton("����");
		saveBtn = new JButton("����");
		
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
		 * ������Ʈ ������ ���� �ӽ����� 
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
		
		
		String[] regColumns = {"��ǰ��","��ǰ�ڵ�","Lot No","����(Qty)","��������","��������"};
		//String[][] regRows = new String[0][6]; 
		String[][] regRows = {}; 
		
		JScrollPane regTablePane;
		JTable regTable;
		
		regTableData = new DefaultTableModel(regRows, regColumns) {
			// ���̺� �� ���� ���� - ���� �� ���� x
			@Override
			public boolean isCellEditable(int row, int column) {
				// TODO Auto-generated method stub
				return false;
			}
		};
		
		regTable = new JTable(regTableData);
			// ���̺� ���� Ŭ���� �� ����. - ���۳�Ʈ ��ü�� ������ �ȵ�.
			// regTable.setEnabled(false);
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
		
		regPane.setTopComponent(inputPanel);
		regPane.setBottomComponent(regTablePane);
		regPane.setDividerSize(5);
		regPane.setBorder(BorderFactory.createEmptyBorder(20, 10, 10, 10));
		
		
		
		/**
		 *   [Panels for Inventory Search, Update and Delete]
		 *   
		 *   �г� 3���� ������ ����
		 *   
		 *   (���)
		 *    �˻���� ������Ʈ ��ġ �г�
		 *   
		 *   (�ߺ�)
		 *	  table
		 *   
		 *   (�Ϻ�)
		 *    ������� ������Ʈ ��ġ �г�
		 *   
		 */
		
		JPanel readPanel = new JPanel(new BorderLayout(0, 15));
		readPanel.setBorder(BorderFactory.createEmptyBorder(20, 10, 10, 10));
		
		JPanel rTopPanel = new JPanel();
		
		
		//Top
		
		JLabel readLabel1, readLabel2;
		
		readLabel1=new JLabel("��ȸ ���: ");
		readLabel2=new JLabel("Lot No: ");
		
		String[] readProducts = {"================", "Total Inventory", "Camera-R30 (R3067)", "Battery-T21 (T2166)", 
				"Board-D40 (D4066)", "Sponge-G80 (G8083)", "Fabric-C18 (C1870)"};
		
		readComBox = new JComboBox<String>(readProducts) ;
		readComBox.setBackground(Color.WHITE);
		readField = new JTextField(15);
		
		//edit or delete the selected item after searching.
		searchBtn=new JButton("�˻�");
		updateBtn=new JButton("����");
		deleteBtn=new JButton("����");
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
		
		// �߾� ���̺�
		String[] readColumns = {"��ǰ��","��ǰ�ڵ�","Lot No","����(Qty)","��������","��������"};
		String[][] readRows = new String[0][6];
		
		JScrollPane readTablePane;
		JTable readTable;
		
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
		
		
		// ��ü�� ����
		tabs.addTab("register", regPane);
		tabs.addTab("read", readPanel);
		
		JPanel tab1 = new JPanel();
		JLabel lbTab1 = new JLabel("�����  ");
		tabX1 = new JButton("X");
		tabX1.setBorder(BorderFactory.createEtchedBorder());
		tabX1.setBorderPainted(false);
		tabX1.setForeground(Color.GRAY);
		tabX1.setContentAreaFilled(false);
		tabX1.setToolTipText("close this tab");
		
		tab1.add(lbTab1);
		tab1.add(tabX1);
		tab1.setOpaque(false);
		
		JPanel tab2 = new JPanel();
		JLabel lbTab2 = new JLabel("�����ȸ/����  ");
		tabX2 = new JButton("X");
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
		
		
	// tab�� ���� ���ٿ��� ����
	// tabs.setEnabledAt(2, false);
	// tabs.setEnabledAt(3, false);
	// index��ȣ�� JTabbedpane�� Ȱ��ȭ â ����
	// tabs.setSelectedIndex(1);
		
		//tabs.setVisible(false);
		
		firstSplit.setLeftComponent(westPanel);
		firstSplit.setRightComponent(tabs);
		firstSplit.setDividerSize(5);
		add(firstSplit, BorderLayout.CENTER);

		
		/**
		 *  [�̺�Ʈ �ڵ鷯] - ( ) : ���� ����
		 *  JToolbar func k : (info), logout, exit
		 *  westPanel func k
		 *  inputPanel func k : add, remove, (save), (update)
		 *  
		 */
		
		infoBtn.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				new InfoDialog();
				
			}
		});
		
		
		exitBtn.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				int answer=JOptionPane.showConfirmDialog(null, "���α׷��� �����Ͻðڽ��ϱ�?", "IMS ���α׷� ���� Ȯ��"
						, JOptionPane.YES_NO_OPTION);
				if(answer==JOptionPane.YES_OPTION) {
					System.exit(0);
				} else return;
			}
		});
		
		jTree.addTreeSelectionListener(new TreeSelectionListener() {
			
			@Override
			public void valueChanged(TreeSelectionEvent e) {
				DefaultMutableTreeNode selectedNode = (DefaultMutableTreeNode)jTree.getLastSelectedPathComponent();

				if(selectedNode.toString().equals("�����")) {
					// find more efficient way
					tabs.setEnabledAt(0, true);
					tab1.setVisible(true);
					tabs.setBackgroundAt(0, Color.WHITE);
					for(Component c : regPane.getComponents()) {
						c.setVisible(true);
					}
				} 
				if(selectedNode.toString().equals("�����ȸ/����")) {
					
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
		
		tabX1.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				//tabs.remove(tabs.getSelectedIndex());
				tabs.setEnabledAt(0, false);
				tab1.setVisible(false);
				tabs.setBackgroundAt(0, null);
				for(Component c : regPane.getComponents()) {
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
		
		
		// regPane Components ActionListener
		
		// ��ǰ�� ���ÿ� ���� ��ǰ�ڵ� ���� �� ǥ��
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
				regFieldC2.requestFocus();
			}
		});
		
		
		// regFdarr = {regFieldC1, regFieldC2, regFieldC3, regFieldC4, regFieldC5, regFieldC6}
		// regFieldC1.getText(), regFieldC2.getText(), regFieldC3.getText(), regFieldC4.getText(), regFieldC5.getText(), regFieldC6.getText()
		addBtn.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				isValidated();
				
			}
		});

		//regTableData.removeRow(row-1);
		removeBtn.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				// ��� : null
				if(regTableData.getRowCount()==0) {
					JLabel message = new JLabel("[����] ������ �� �ִ� �׸��� �����ϴ�.");
					JOptionPane.showMessageDialog(null, message, "Error", JOptionPane.ERROR_MESSAGE);
					return;
				} else {
					// ���� x
					if(regTable.getSelectedRow()==-1) {
						regTableData.removeRow(regTableData.getRowCount()-1);
					
					//	1�� ����
					} else if(regTable.getSelectedRowCount()==1) {
						regTableData.removeRow(regTable.getSelectedRow());
						initRegInfo();
					
					// ������ ����	
					} else {
						int selectedRows=regTable.getSelectedRowCount();
						for(int i=0; i<selectedRows; i++) {
							regTableData.removeRow(regTable.getSelectedRow());
						}
						initRegInfo();
					}
				}
			}
		});
		
		saveBtn.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				if(regTableData.getRowCount()==0) {
					JOptionPane.showMessageDialog(null, "��ϵ� ��ǰ������ �����ϴ�.", "Error", JOptionPane.ERROR_MESSAGE);
				
				} else {
					int dialogResult = JOptionPane.showOptionDialog(null, "����� ������ ������ �����Ͻðڽ��ϱ�?", "Option Confirm" 
							, JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE, null, null, null);
						
						//JOption.YES_OPTION (==0)�� ��� ������ �ڵ� �ۼ�.
					if(dialogResult==0) {
						// �߰��� ��ǰ���� : 1��
						if(regTableData.getRowCount()==1) { 
							
							int result=registerProduct();
							
							JOptionPane.showMessageDialog(null, result+"���� ��ǰ Batch ������ ���������� ����Ǿ����ϴ�.");
							removeAllRows(regTableData);
							initRegInfo();
							
						// �߰��� ��ǰ���� : 2�� �̻�	
						} else {  
							
							int[] results=registerProducts();
							
							JOptionPane.showMessageDialog(null, results.length+"���� ��ǰ Batch ������ ���������� ����Ǿ����ϴ�.");
							removeAllRows(regTableData);
							initRegInfo();
						}
							
					} else if(dialogResult!=0) {
						// removeAllRows(regTableData);
					}
				}
			}// ActionPerformed() end
		});
		
		
		// readPanel Components ActionListener
		
		searchBtn.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				removeAllRows(readTableData);
				
				// Null
				if(readComBox.getSelectedItem().toString().equals("================") && readField.getText().equals("")) {
					JOptionPane.showMessageDialog(null, "[����] �Էµ� ���� �����ϴ�. �����͸� �Է����ּ���.", "Error", JOptionPane.ERROR_MESSAGE);
					return;
					
				// LotNo �˻�
				} else if(!readField.getText().equals("")) {
					String lotNo=readField.getText().replace(" ", "");
					showInfoProduct(lotNo);

					
				// ��ü ���Ȯ��
				} else if(readComBox.getSelectedItem().toString().equals("Total Inventory")) {
					showInfoAllProducts();
					
				// JComboBox�� ���� ��ǰ ���� - ������ ���Ȯ��
				} else {
					String pCode=null;
	
					switch (readComBox.getSelectedItem().toString()) {
					case "Camera-R30 (R3067)": pCode="R3067"; break;
					case "Battery-T21 (T2166)": pCode="T2166"; break;
					case "Board-D40 (D4066)": pCode="D4066"; break;
					case "Sponge-G80 (G8083)": pCode="G8083"; break;
					case "Fabric-C18 (C1870)": pCode="C1870"; break;
					}
					
					showInfoProducts(pCode);
				}
			}
		});
		
		updateBtn.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				if(readTable.getSelectedRowCount()==0) {
					JOptionPane.showMessageDialog(null, "������ ��������� �������� �ʽ��ϴ�.", "Notice", JOptionPane.INFORMATION_MESSAGE);
					return;
				} else if (readTable.getSelectedRowCount()==1) {
					
					popPnl=new UpdateDialog(null, "Update");
					
					int rowIndex = readTable.getSelectedRow();
					
					String productName = (String)readTableData.getValueAt(rowIndex, PRODUCT_NAME_INDEX);
					String productCode = (String)readTableData.getValueAt(rowIndex, PRODUCT_CODE_INDEX);
					String lotNo = (String)readTableData.getValueAt(rowIndex, LOTNO_INDEX);
					int qty = (Integer)readTableData.getValueAt(rowIndex, QUANTITY_INDEX);
					String mfgDate = (String)readTableData.getValueAt(rowIndex, MANUFACTURING_DATE_INDEX);
					String exDate = (String)readTableData.getValueAt(rowIndex, EXPIRATION_DATE_INDEX);
					
					
					//popPnl.comBox.setSelectedIndex(popPnl.products.indexOf(productName));
					popPnl.fd0.setText(productName);
					popPnl.fd1.setText(productCode);
					popPnl.fd2.setText(lotNo);
					popPnl.fd3.setText(Integer.toString(qty));
					popPnl.fd4.setText(mfgDate);
					popPnl.fd5.setText(exDate);
					
					popPnl.fd2.requestFocus();
					
					popPnl.updateBtnInPnl.addActionListener(new ActionListener() {
						@Override
						public void actionPerformed(ActionEvent e) {
						
							if(ProductDAO.getInstance().searchProduct(popPnl.fd2.getText())!=null) {
								JOptionPane.showMessageDialog(null, "�ش� Batch�� ���� ������ ������ �����մϴ�.  �Է��Ͻ� Lot No�� Ȯ�����ּ���."
										, "Error", JOptionPane.INFORMATION_MESSAGE);
							} else {
								
								String[] str=popPnl.getAllTxts();
								
								ProductDAO.getInstance().updateProduct(createProductDTO(str));
								popPnl.dispose();
								
								removeAllRows(readTableData);
								
								switch(readComBox.getSelectedItem().toString()) {
								case "Total Inventory": showInfoAllProducts(); break;
								case "Camera-R30 (R3067)": showInfoProducts("R3067"); break;
								case "Battery-T21 (T2166)": showInfoProducts("T2166"); break;
								case "Board-D40 (D4066)": showInfoProducts("D4066"); break;
								case "Sponge-G80 (G8083)": showInfoProducts("G8083"); break;
								case "Fabric-C18 (C1870)": showInfoProducts("C1870"); break;
								}
							}
						}
					});
					
				} else {
					JOptionPane.showMessageDialog(null, "���õ� �׸��� Ȯ�����ּ���. \n�ټ��� ��ġ������ ���ÿ� ������ �� �����ϴ�. ", "Error", JOptionPane.ERROR_MESSAGE);
					
				}
			}
		});
		
		deleteBtn.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				if(readTable.getSelectedRow() == -1) {
					JOptionPane.showMessageDialog(null, "[����] ������ ����� �����ϴ�.", "Error", JOptionPane.ERROR_MESSAGE);
					return;
				} else if(readTable.getSelectedRowCount()==1) {
					
					int dialogResult = JOptionPane.showConfirmDialog(null, "  ���õ� ����� �������� �����Ͻðڽ��ϱ�?    \n  [����] ������ ������ ������ �Ұ��� �մϴ�.    \n", 
							"Confirm Message", JOptionPane.YES_NO_OPTION, JOptionPane.WARNING_MESSAGE, null);
					
					if(dialogResult==JOptionPane.YES_OPTION) {
					
						// lotNo : TOTAL_PRODUCTS�� PK
						int rowIndex = readTable.getSelectedRow();
						String lotNoSelected = (String)readTableData.getValueAt(rowIndex, LOTNO_INDEX);
						int resultRow = ProductDAO.getInstance().deleteProduct(lotNoSelected);
						
						JOptionPane.showMessageDialog(null, resultRow+"���� ��ǰ Batch ������ ���������� �����Ǿ����ϴ�.", "Notice", JOptionPane.INFORMATION_MESSAGE);
						
						removeAllRows(readTableData);
						
						// readComBox�� ���õǾ��� ��Ȳ�� ���� ���� �� ��� ������ ����
						switch(readComBox.getSelectedItem().toString()) {
						case "Total Inventory": showInfoAllProducts(); break;
						case "Camera-R30 (R3067)": showInfoProducts("R3067"); break;
						case "Battery-T21 (T2166)": showInfoProducts("T2166"); break;
						case "Board-D40 (D4066)": showInfoProducts("D4066"); break;
						case "Sponge-G80 (G8083)": showInfoProducts("G8083"); break;
						case "Fabric-C18 (C1870)": showInfoProducts("C1870"); break;
						}
						
					} else return;
				}
			}
		});
		
		setVisible(true);
	} //WorkPanel ������ ����
	
	
	
	/*
	 ***********************************************************************
	 *  << Method area >>
	 ***********************************************************************  
	 */
	
	
	public int removeAllRows(DefaultTableModel tableData) {
		int rows=0;
		
		rows=tableData.getRowCount();
		for(int i=0; i<rows; i++) {
			tableData.removeRow(0);
		}
		
		return rows;
	}
	
	public void initRegInfo() {
		regComBox.setSelectedIndex(0);
		regFieldC2.setText("");
		regFieldC3.setText("");
		regFieldC4.setText("");
		regFieldC5.setText("");
	}
	
	/**
	 * check input values whether they are available or not.
	 * 
	 * @return {@code true} if they pass the standards
	 */
	public boolean isValidated() {
		boolean results=false;
		// ��ȿ�� �˻縦 ���� ����ǥ���� ����
		String regLot="^[S|A](19|20)\\d{2}(0[1-9]|1[0-2])(1[0-9]|2[0-9]|3[01])[R|T|D|G|C](1|2)";
		String regQty="^[0-9]*$";
		String regMfgDateOne="^(19|20)\\d{2}-(0[1-9]|1[0-2])-(1[0-9]|2[0-9]|3[01])";
		String regMfgDateTwo="^(19|20)\\d{2}(0[1-9]|1[0-2])(1[0-9]|2[0-9]|3[01])";
		String regExDateOne="^(19|20)\\d{2}-(0[1-9]|1[0-2])-(1[0-9]|2[0-9]|3[01])";
		String regExDateTwo="^(19|20)\\d{2}(0[1-9]|1[0-2])(1[0-9]|2[0-9]|3[01])";
		
		
		if(regComBox.getSelectedItem().toString().equals("============")
			|| regFieldC1.getText().equals("")
			|| regFieldC2.getText().equals("")
			|| regFieldC3.getText().equals("")
			|| regFieldC4.getText().equals("")
			|| regFieldC5.getText().equals("")) {
			
				JLabel message = new JLabel("�� �Է¶��� �����մϴ�. �ٽ� Ȯ�����ּ���.");
				JOptionPane.showMessageDialog(null, message, "Error", JOptionPane.ERROR_MESSAGE);
				return results;
			
		} else if(ProductDAO.getInstance().searchProduct(regFieldC2.getText().replace(" ", ""))!=null) {
			JOptionPane.showMessageDialog(null, "�ش� Batch�� ���� ������ ������ �����մϴ�.  �Է��Ͻ� Lot No�� Ȯ�����ּ���."
					, "Error", JOptionPane.INFORMATION_MESSAGE);
			return results;

		} else if(!Pattern.matches(regLot, regFieldC2.getText().replace(" ", ""))) {// lotNo 
			JOptionPane.showMessageDialog(null, "������ ��Ŀ� ��� ���Դϴ�. �Է��Ͻ� Lot No�� Ȯ�����ּ���."
					, "Error", JOptionPane.INFORMATION_MESSAGE);
			return results;

		} else if(!Pattern.matches(regQty, regFieldC3.getText().replace(" ", ""))) {// ���ڸ��Է� 
			JOptionPane.showMessageDialog(null, "������ �ڿ����� �Է°����մϴ�. �Է��Ͻ� ������ Ȯ�����ּ���."
					, "Error", JOptionPane.INFORMATION_MESSAGE);
			return results;

		} else if(!Pattern.matches(regMfgDateOne, regFieldC4.getText().replace(" ", ""))
				&& !Pattern.matches(regMfgDateTwo, regFieldC4.getText().replace(" ", ""))) {// ��������
			JOptionPane.showMessageDialog(null, "�������� ���������Դϴ�. ��Ŀ� ���߾� �Է¹ٶ��ϴ�.\n �Է¾���� 'yyyy-mm-dd' �Ǵ� 'yyyymmdd' �Դϴ�."
					, "Error", JOptionPane.INFORMATION_MESSAGE);
			return results;

		} else if(!Pattern.matches(regExDateOne, regFieldC5.getText().replace(" ", ""))
				&& !Pattern.matches(regExDateTwo, regFieldC5.getText().replace(" ", ""))) {// ��������
			JOptionPane.showMessageDialog(null, "�������� ���������Դϴ�. ��Ŀ� ���߾� �Է¹ٶ��ϴ�.\n �Է¾���� 'yyyy-mm-dd' �Ǵ� 'yyyymmdd' �Դϴ�."
					, "Error", JOptionPane.INFORMATION_MESSAGE);
			return results;

		} else {
			
			Object[] regValues= new Object[REQ_REGISTRATION_INFO_NO];
			
			regValues[0]=regComBox.getSelectedItem().toString();
			regValues[1]=regFieldC1.getText();
			regValues[2]=regFieldC2.getText();
			regValues[3]=regFieldC3.getText();
			regValues[4]=regFieldC4.getText().replace("-", "");
			regValues[5]=regFieldC5.getText().replace("-", "");
			
			regTableData.addRow(regValues);
			results=true;
		}
		return results;
	}
	
	
	/*
	Vector<Object> row = regTableData.getDataVector().elementAt(0);
	ProductDTO product=new ProductDTO();
	product.setpName((String)row.get(0));
	product.setpCode((String)row.get(1));
	product.setLotNo((String)row.get(2));
	product.setQty(Integer.parseInt((String)row.get(3)));
	product.setMfgDate((String)row.get(4));
	product.setExDate((String)row.get(5));
	
	int resultRow=ProductDAO.getInstance().insertProduct(product);
	*/
	public int registerProduct() {

		int result=0;
		
		ProductDTO product=new ProductDTO();
		product.setpName((String)regTableData.getValueAt(0, PRODUCT_NAME_INDEX));
		product.setpCode((String)regTableData.getValueAt(0, PRODUCT_CODE_INDEX));
		product.setLotNo((String)regTableData.getValueAt(0, LOTNO_INDEX));
		product.setQty(Integer.parseInt((String)regTableData.getValueAt(0, QUANTITY_INDEX)));
		product.setMfgDate((String)regTableData.getValueAt(0, MANUFACTURING_DATE_INDEX));
		product.setExDate((String)regTableData.getValueAt(0, EXPIRATION_DATE_INDEX));
		
		result=ProductDAO.getInstance().insertProduct(product);
		return result;
	}

	
	/*
	  < �޼ҵ带 �����ϸ鼭 ��� �߻����� �ʵ��� ���� ���� >
	Vector<Vector> rows = regTableData.getDataVector(); // unchecked, rawtypes Ÿ���� warning �߻�.
	List<ProductDTO> productList = new ArrayList<ProductDTO>();
	int tableRows=regTableData.getRowCount(); 
	
	for(Vector<Object> v : rows) {
		ProductDTO product = new ProductDTO();
		product.setpName((String)v.get(0));
		product.setpCode((String)v.get(1));
		product.setLotNo((String)v.get(2));
		product.setQty(Integer.parseInt((String) v.get(3)));
		product.setMfgDate((String)v.get(4));
		product.setExDate((String)v.get(5));
		productList.add(product);
	}
    int[] resultRows = ProductDAO.getInstance().insertProducts(productList);
	*/
	public int[] registerProducts() {
		int[] results=null;
		int tableRows=regTableData.getRowCount();
		List<ProductDTO> productList = new ArrayList<ProductDTO>();
		
		for(int i=0; i<tableRows; i++) {
			ProductDTO product=new ProductDTO();
			product.setpName((String)regTableData.getValueAt(i, PRODUCT_NAME_INDEX));
			product.setpCode((String)regTableData.getValueAt(i, PRODUCT_CODE_INDEX));
			product.setLotNo((String)regTableData.getValueAt(i, LOTNO_INDEX));
			product.setQty(Integer.parseInt((String)regTableData.getValueAt(i, QUANTITY_INDEX)));
			product.setMfgDate((String)regTableData.getValueAt(i, MANUFACTURING_DATE_INDEX));
			product.setExDate((String)regTableData.getValueAt(i, EXPIRATION_DATE_INDEX));
			productList.add(product);
		}
		results=ProductDAO.getInstance().insertProducts(productList);
		
		return results;
	}
	
	/**
	 * Show information on the product which have the lot number.<p>
	 * 
	 * add the information of {@code ProductDTO} instance to {@code DefualtTableModel} readTableData
	 * by swapping to {@code Vector} type of a row with {@code addRow()} method<p>
	 * {pName, pCode, lotNo, qty, mfgDate, exDate}
	 * 
	 * @param product {@code ProductDTO} instances from DataBase
	 */
	public void showInfoProduct(String lotNo) {
		ProductDTO product=ProductDAO.getInstance().searchProduct(lotNo);
		
		Vector<Object> rowData = new Vector<Object>();
		
		rowData.add(product.getpName());
		rowData.add(product.getpCode());
		rowData.add(product.getLotNo());
		rowData.add(product.getQty());
		rowData.add(product.getMfgDate());
		rowData.add(product.getExDate());
		readTableData.addRow(rowData);
	}
	
	/**
	 * Show the information of products having the specified properties.<p>
	 * 
	 * add the information of {@code ProductDTO} instances, which is 
	 * selected by productCode {@code pCode}, to {@code DefualtTableModel} readTableData
	 * by swapping to {@code Vector} type of rows with {@code addRow()} method.
	 * 
	 * @param productList a list of {@code ProductDTO} instances from DataBase
	 */
	public void showInfoProducts(String productCode) {
		List<ProductDTO> productList=ProductDAO.getInstance().searchProducts(productCode);
	
		for(int i=0; i<productList.size(); i++) {
			Vector<Object> rowData = new Vector<Object>();
			
			rowData.add(productList.get(i).getpName());
			rowData.add(productList.get(i).getpCode());
			rowData.add(productList.get(i).getLotNo());
			rowData.add(productList.get(i).getQty());
			rowData.add(productList.get(i).getMfgDate());
			rowData.add(productList.get(i).getExDate());
			readTableData.addRow(rowData);
		}
	}
	
	/**
	 * Show all information of the table {@code TOTAL_PRODUCTS}.<p>
	 * 
	 * After receiving all table information from {@code Oracle DB} 
	 * as the list of {@code ProductDTO} instances, add it to {@code DefualtTableModel} readTableData 
	 * by swapping to {@code Vector} type of rows with {@code addRow()} method.
	 * 
	 */
	public void showInfoAllProducts() {
		List<ProductDTO> productList=ProductDAO.getInstance().searchAll();
		
		
		for(int i=0; i<productList.size(); i++) {
			Vector<Object> rowData = new Vector<Object>();
			
			rowData.add(productList.get(i).getpName());
			rowData.add(productList.get(i).getpCode());
			rowData.add(productList.get(i).getLotNo());
			rowData.add(productList.get(i).getQty());
			rowData.add(productList.get(i).getMfgDate());
			rowData.add(productList.get(i).getExDate());
			readTableData.addRow(rowData);
		}
	}
	
	/**
	 * return ProductDTO instance with information from {@code String} array.
	 * This array should have proper information
	 * 
	 * @param productFeilds 
	 * @return an instance
	 */
	public ProductDTO createProductDTO(String[] productFeilds) {
		ProductDTO product=new ProductDTO();
		
		product.setpName(productFeilds[0]);
		product.setpCode(productFeilds[1]);
		product.setLotNo(productFeilds[2]);
		product.setQty(Integer.parseInt(productFeilds[3]));
		product.setMfgDate(productFeilds[4]);
		product.setExDate(productFeilds[5]);
		
		return product;
	}
	
	// to be implemented
	public ProductDTO createProductDTO(Vector<String> productFeilds) {
		ProductDTO product=new ProductDTO();

		
		return product;
	}
	
}
