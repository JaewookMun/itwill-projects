package erp.gui;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JSplitPane;
import javax.swing.JTabbedPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.JToolBar;
import javax.swing.UIManager;
import javax.swing.table.DefaultTableModel;

public class WorkPanel extends JPanel {
	private static final long serialVersionUID = 1L;
	
	private JButton logoutBtn, infoBtn, exitBtn;
	
	private JPanel westPanel;
	private JButton registerBtn, update;
	
	private JButton addBtn, removeBtn, saveBtn;
	private JTextField regFieldC1, regFieldC2, regFieldC3, regFieldC4, regFieldC5, regFieldC6;
	private JButton searchBtn;
	
	
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
		
		JSplitPane split1st = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT);
		
		
		westPanel = new JPanel();
		JLabel list = new JLabel("���");
		registerBtn=new JButton("��ǰ���");
		JLabel blankLbl = new JLabel(" ");
		update=new JButton("��������");
		
		list.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
		//register.setBorder(new EmptyBorder);
		
		westPanel.add(list);
		westPanel.add(registerBtn);
		westPanel.add(blankLbl);
		westPanel.add(update);
		
		westPanel.setLayout(new BoxLayout(westPanel, BoxLayout.Y_AXIS));
		westPanel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
		
		
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
		regLabel1 = new JLabel("��ǰ�� :");
		regLabel2 = new JLabel("��ǰ�ڵ� :");
		regLabel3 = new JLabel("Lot No :");
		regLabel4 = new JLabel("���� :");
		regLabel5 = new JLabel("�������� :");
		regLabel6 = new JLabel("�������� :");
		
		regFieldC1 = new JTextField(15);
		regFieldC2 = new JTextField(15);
		regFieldC3 = new JTextField(15);
		regFieldC4 = new JTextField(15);
		regFieldC5 = new JTextField(15);
		regFieldC6 = new JTextField(15);
		
		//�� ȿ������ ����� ������ �� ������ �� �𸣰���..
		JTextField[] regFdArr = {regFieldC1, regFieldC2, regFieldC3, regFieldC4, regFieldC5, regFieldC6};
		
		addBtn = new JButton("���");
		removeBtn = new JButton("����");
		saveBtn = new JButton("����");
		
		addBtn.setFocusPainted(false);
		removeBtn.setFocusPainted(false);
		saveBtn.setFocusPainted(false);
		
		regSubPanel1.add(regLabel1);
		regSubPanel1.add(regFieldC1);
		
		regSubPanel2.add(regLabel2);
		regSubPanel2.add(regFieldC2);

		regSubPanel3.add(regLabel3);
		regSubPanel3.add(regFieldC3);
		
		regSubPanel4.add(regLabel4);
		regSubPanel4.add(regFieldC4);
		
		regSubPanel5.add(regLabel5);
		regSubPanel5.add(regFieldC5);
		
		regSubPanel6.add(regLabel6);
		regSubPanel6.add(regFieldC6);
		
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
		String[][] regRows = new String[0][6]; 
		
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
		
		regTablePane = new JScrollPane(regTable);
		
		split2nd.setTopComponent(inputPanel);
		split2nd.setBottomComponent(regTablePane);
		split2nd.setDividerSize(8);
		split2nd.setBorder(BorderFactory.createEmptyBorder(20, 10, 10, 10));
		
		
		
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
		
		//JPanel rBotPanel = new JPanel();
		
		//Top
		
		JLabel readLabel1, readLabel2, readLabel3;
		JTextField readField1, readField2, readField3;
		
		
		readLabel1=new JLabel("��ǰ��");
		readLabel2=new JLabel("��ǰ�ڵ�");
		readLabel3=new JLabel("Lot No");
		
		readField1=new JTextField(15);
		readField2=new JTextField(15);
		readField3=new JTextField(15);
		
		searchBtn=new JButton("�˻�");
		searchBtn.setFocusPainted(false);
		
		
		rTopPanel.add(readLabel1);
		rTopPanel.add(readField1);
		rTopPanel.add(readLabel2);
		rTopPanel.add(readField2);
		rTopPanel.add(readLabel3);
		rTopPanel.add(readField3);
		
		rTopPanel.add(searchBtn);
		
		readPanel.add(rTopPanel, BorderLayout.NORTH);
		
		// �߾� ���̺�
		String[] readColumns = {"��ǰ��","��ǰ�ڵ�","Lot No","����(Qty)","��������","��������"};
		String[][] readRows = {
				{"","","","","",""}
		};
		
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
		
		readTablePane = new JScrollPane(readTable);
		
		readPanel.add(readTablePane, BorderLayout.CENTER);
		
		// Bottom
		
		
		
		
		// ��ü�� ����
		tabs.addTab("register", split2nd);
		tabs.addTab("read", readPanel);
		tabs.addTab("update", new JLabel());
		tabs.addTab("delete", new JLabel());
		
		JPanel tab1 = new JPanel();
		JLabel lbTab1 = new JLabel("register ");
		JButton exit1 = new JButton("x");
		exit1.setSize(5, 5);
		exit1.setBackground(null);
		exit1.setBorderPainted(false);
		exit1.setBorder(null);
		exit1.setForeground(Color.GRAY);
		exit1.setAlignmentY(TOP_ALIGNMENT);
		tab1.add(lbTab1);
		tab1.add(exit1);
		tab1.setOpaque(false);
		
		tabs.setTabComponentAt(0, tab1);
		tabs.setBackgroundAt(0, Color.WHITE);
		
		
		
		//tab�� ���� ���ٿ��� ����
		tabs.setEnabledAt(2, false);
		tabs.setEnabledAt(3, false);
		//index��ȣ�� JTabbedpane�� Ȱ��ȭ â ����
		tabs.setSelectedIndex(0);
		
		split1st.setLeftComponent(westPanel);
		split1st.setRightComponent(tabs);
		split1st.setDividerSize(5);
		add(split1st, BorderLayout.CENTER);

		
		/**
		 *  [�̺�Ʈ �ڵ鷯] - ( ) : ���� ����
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
		
		// regFdarr = {regFieldC1, regFieldC2, regFieldC3, regFieldC4, regFieldC5, regFieldC6}
		// regFieldC1.getText(), regFieldC2.getText(), regFieldC3.getText(), regFieldC4.getText(), regFieldC5.getText(), regFieldC6.getText()
		addBtn.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				if(regFdArr[0].getText().equals("")
						&& regFdArr[1].getText().equals("")
						&& regFdArr[2].getText().equals("")
						&& regFdArr[3].getText().equals("")
						&& regFdArr[4].getText().equals("")
						&& regFdArr[5].getText().equals("")) {
					JOptionPane.showMessageDialog(null, "[����] �Էµ� ���� �����ϴ�. �����͸� �Է����ּ���.", "Error", JOptionPane.ERROR_MESSAGE);
					return;
				} else {

					Object[] regValues= new Object[regFdArr.length];
					for(int i=0; i<regFdArr.length; i++) {
						regValues[i]=regFdArr[i].getText();
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
					JOptionPane.showMessageDialog(null, "[����] ������ �� �ִ� �׸��� �����ϴ�.", "Error", JOptionPane.ERROR_MESSAGE);
					return;
				} else {
					regTableData.removeRow(regTableData.getRowCount()-1);
				}
			}
		});
		
		saveBtn.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				JOptionPane.showOptionDialog(null, "�Էµ� ������ ������ �����Ͻðڽ��ϱ�?", "Option Confirm" 
					, JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE, null, null, null);
			}
		});
		
		/*
		String[][] regRows = {
				{"","","","","",""}
				// JTable�� ���� �ӽõ�����
				/*
				{"��) Camera-R30","R3067","S20201016R1","200","20201016","20301015"},
		};
		 */
		
		
	}
}
