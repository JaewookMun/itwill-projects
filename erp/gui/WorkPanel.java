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

import erp.data.ProductDAO;
import erp.data.ProductDTO;

public class WorkPanel extends JPanel {
	private static final long serialVersionUID = 1L;
	
	protected JButton logoutBtn;
	private JButton infoBtn, exitBtn;
	
	private DefaultMutableTreeNode registration, readNupdate;
	
	private JComboBox<String> regComBox;
	private JTextField regFieldC1, regFieldC2, regFieldC3, regFieldC4, regFieldC5;
	private JButton addBtn, removeBtn, saveBtn;
	
	
	private JComboBox<String> readComBox;
	private JTextField readField;
	private JButton searchBtn, updateBtn, deleteBtn;
	
	private UpdateDialog popPnl;
	
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
		
		/*
		infoBtn = new JButton(new ImageIcon(getClass().getResource("/images/infoTest.png")));
		logoutBtn=new JButton(new ImageIcon(getClass().getResource("/images/logoutTest.png")));
		
		logoutBtn.setBounds(1150, 20, 85, 25);
		logoutBtn.setFont(new Font("����", Font.PLAIN, 13));
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
		

		
		/**  [����ȭ�� - �¿����]
		 *   ���� : �޴���  /  ���� : ���α�� 
		 */
		
		JSplitPane firstSplit = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT);
		
		JPanel westPanel = new JPanel(new FlowLayout(FlowLayout.LEFT));
		JTree jTree;
		DefaultMutableTreeNode treeList = new DefaultMutableTreeNode("������");
		
		registration = new DefaultMutableTreeNode("�����");
		readNupdate = new DefaultMutableTreeNode("�����ȸ/����");
		
		treeList.add(registration);
		treeList.add(readNupdate);
		
		jTree = new JTree(treeList);
		jTree.setOpaque(false);
		
		westPanel.add(jTree);
		westPanel.setBackground(null);
		
		
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
		
		//�� ȿ������ ����� ������ �� ������ �� �𸣰���..
		JTextField[] regFdArr = {regFieldC1, regFieldC2, regFieldC3, regFieldC4, regFieldC5};
		
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
		//regTable.setEnabled(false);
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
		regPane.setDividerSize(8);
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
		//tabs.addTab("update", new JLabel());
		//tabs.addTab("delete", new JLabel());
		
		JPanel tab1 = new JPanel();
		JLabel lbTab1 = new JLabel("�����  ");
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
		JLabel lbTab2 = new JLabel("�����ȸ/����  ");
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
		
		
		
		//tab�� ���� ���ٿ��� ����
		//tabs.setEnabledAt(2, false);
		//tabs.setEnabledAt(3, false);
		//index��ȣ�� JTabbedpane�� Ȱ��ȭ â ����
		//tabs.setSelectedIndex(1);
		
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
		
		
		// ��ǰ�� ���ý� ��ǰ�� ���� ��ǰ�ڵ� �ڵ� ����
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

					JOptionPane.showMessageDialog(null, "[����] �Էµ� ���� �����ϴ�. �����͸� �Է����ּ���.", "Error", JOptionPane.ERROR_MESSAGE);
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
		

		//regTableData.removeRow(row-1);
		removeBtn.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				// ��� : null
				if(regTableData.getRowCount()==0) {
					JOptionPane.showMessageDialog(null, "[����] ������ �� �ִ� �׸��� �����ϴ�.", "Error", JOptionPane.ERROR_MESSAGE);
					return;
				} else {
					// ���� x
					if(regTable.getSelectedRow()==-1) {
						regTableData.removeRow(regTableData.getRowCount()-1);
					
					//	1�� ����
					} else if(regTable.getSelectedRowCount()==1) {
						regTableData.removeRow(regTable.getSelectedRow());
					
					} else {
						int selectedRows=regTable.getSelectedRowCount();
						for(int i=0; i<selectedRows; i++) {
							regTableData.removeRow(regTable.getSelectedRow());
						}
					}
				}
			}
		});
		
		saveBtn.addActionListener(new ActionListener() {
			// unchecked, rawtypes�� suppressWarning ���Ϸ��� ��� �ؾ��ϴ���?? 
			// regTableData.getDataVector().elementAt(0)���� �߻�
			@SuppressWarnings({ "unchecked", "rawtypes" })
			@Override
			public void actionPerformed(ActionEvent e) {
				if(regTableData.getRowCount()==0) {
					JOptionPane.showMessageDialog(null, "��ϵ� ��ǰ������ �����ϴ�.", "Error", JOptionPane.ERROR_MESSAGE);
				
				} else {
					int dialogResult = JOptionPane.showOptionDialog(null, "����� ������ ������ �����Ͻðڽ��ϱ�?", "Option Confirm" 
							, JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE, null, null, null);
						
						//JOption.YES_OPTION (==0)�� ��� ������ �ڵ� �ۼ�.
						if(dialogResult==0) {
							if(regTableData.getRowCount()==1) { // ��ϵ� 
								
								/*
								ProductDTO product=new ProductDTO();
								product.setpName((String)regTableData.getValueAt(0, 0));
								product.setpCode((String)regTableData.getValueAt(0, 1));
								product.setLotNo((String)regTableData.getValueAt(0, 2));
								product.setQty(Integer.parseInt((String) regTableData.getValueAt(0, 3)));
								product.setMfgDate((String)regTableData.getValueAt(0, 4));
								product.setExDate((String)regTableData.getValueAt(0, 5));
								*/
								
								Vector<Object> row = regTableData.getDataVector().elementAt(0);
								ProductDTO product=new ProductDTO();
								product.setpName((String)row.get(0));
								product.setpCode((String)row.get(1));
								product.setLotNo((String)row.get(2));
								product.setQty(Integer.parseInt((String)row.get(3)));
								product.setMfgDate((String)row.get(4));
								product.setExDate((String)row.get(5));
								
								int resultRow=ProductDAO.getInstance().insertProduct(product);
								if(resultRow==0) {
									JOptionPane.showMessageDialog(null, "�̹� ��ϵ� ��ǰ Batch ���� �Դϴ�. �Է������� Ȯ���� ��Ź�帳�ϴ�.", "Error", JOptionPane.INFORMATION_MESSAGE);
								} else {
									JOptionPane.showMessageDialog(null, resultRow+"���� ��ǰ Batch ������ ���������� ����Ǿ����ϴ�.");
								}
								
							} else {
								Vector<Vector> rows = regTableData.getDataVector();
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
							    
							    if(resultRows.length!=tableRows) {
									JOptionPane.showMessageDialog(null, "�̹� ��ϵ� ��ǰ Batch ������ �����մϴ�. �Է������� Ȯ���� ��Ź�帳�ϴ�.", "Error", JOptionPane.INFORMATION_MESSAGE);
								} else {
									JOptionPane.showMessageDialog(null, resultRows.length+"���� ��ǰ Batch ������ ���������� ����Ǿ����ϴ�.");
								}
							}
								
						} else if(dialogResult!=0) {
							removeAllRows(regTableData);
						}
				}
			}// ActionPerformed() end
		});
		
		
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
					
					popPnl=new UpdateDialog(null, "update");
					
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
					
					popPnl.fd3.requestFocus();
					
					popPnl.updateBtnInPnl.addActionListener(new ActionListener() {
						@Override
						public void actionPerformed(ActionEvent e) {
							String[] str=popPnl.getAllTxts();
							
							ProductDAO.getInstance().updateProduct(createProductDTO(str));
							popPnl.dispose();

							removeAllRows(readTableData);
							showInfoAllProducts();
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
						showInfoAllProducts();
						
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
