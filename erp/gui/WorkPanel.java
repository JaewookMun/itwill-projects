package erp.gui;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JLabel;
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
	
	private JButton saveBtn, uploadBtn;
	private JTextField regFieldC1, regFieldC2, regFieldC3, regFieldC4, regFieldC5, regFieldC6;
	
	
	
	public WorkPanel() {
		super();
		
		setSize(ERPsysApp.DEFAULT_WIDTH, ERPsysApp.DEFAULT_HEIGHT);
		setLayout(new BorderLayout());
		
		
		//[tool bar] - �⺻���� Color(240,240,240) 
		JToolBar toolbar = new JToolBar();
		toolbar.setFloatable(false);
		toolbar.setBackground(UIManager.getColor("ToolBar.highlight"));
		
		infoBtn = new JButton("����");
		logoutBtn=new JButton("�α׾ƿ�");
		exitBtn = new JButton("����");
		
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
		
		saveBtn = new JButton("����");
		uploadBtn = new JButton("���ε�");
		
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
		inputPanel.add(saveBtn);
		inputPanel.add(uploadBtn);
				
		
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
		
		String[][] regRows = {
				{"","","","","",""}
				// JTable�� ���� �ӽõ�����
				/*
				{"��) Camera-R30","R3067","S20201016R1","200","20201016","20301015"},
				{"Battery-T21","T2166","S20210314T2","150","20210314","20310313"},
				{"Board-D40","D4066","A20191223D2","300","20191223","20341222"},
				{"Sponge-G80","G8083","A20191130G1","400","20191130","20341129"},
				{"Sponge-G80","G8083","A20191130G1","400","20191130","20341129"},
				{"Fabric-C18","C1870","A20210421C2","600","20210421","20360420"}
				*/
		};
		
		DefaultTableModel regTableData = new DefaultTableModel(regRows, regColumns);
		JScrollPane regTablePane = new JScrollPane(new JTable(regTableData));
		
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
		
		rTopPanel.add(readLabel1);
		rTopPanel.add(readField1);
		rTopPanel.add(readLabel2);
		rTopPanel.add(readField2);
		rTopPanel.add(readLabel3);
		rTopPanel.add(readField3);
		
		readPanel.add(rTopPanel, BorderLayout.NORTH);
		
		// �߾� ���̺�
		String[] readColumns = {"��ǰ��","��ǰ�ڵ�","Lot No","����(Qty)","��������","��������"};
		
		String[][] readRows = {
				{"","","","","",""}
		};
		
		DefaultTableModel readTableData = new DefaultTableModel(readRows, readColumns);
		JScrollPane readTablePane = new JScrollPane(new JTable(readTableData));
		
		readPanel.add(readTablePane, BorderLayout.CENTER);
		
		// Bottom
		
		
		
		
		// ��ü�� ����
		tabs.addTab("register", split2nd);
		tabs.addTab("read", readPanel);
		tabs.addTab("update", new JLabel());
		tabs.addTab("delete", new JLabel());
		
		
		//tab�� ���� ���ٿ��� ����
		tabs.setEnabledAt(2, false);
		tabs.setEnabledAt(3, false);
		//index��ȣ�� JTabbedpane�� Ȱ��ȭ â ����
		tabs.setSelectedIndex(1);
		
		split1st.setLeftComponent(westPanel);
		split1st.setRightComponent(tabs);
		split1st.setDividerSize(5);
		add(split1st, BorderLayout.CENTER);
		
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
		
		
	}
}
