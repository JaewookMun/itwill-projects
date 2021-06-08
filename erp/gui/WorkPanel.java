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
		
		
		//[tool bar] - 기본배경색 Color(240,240,240) 
		JToolBar toolbar = new JToolBar();
		toolbar.setFloatable(false);
		toolbar.setBackground(UIManager.getColor("ToolBar.highlight"));
		
		infoBtn = new JButton("정보");
		logoutBtn=new JButton("로그아웃");
		exitBtn = new JButton("종료");
		
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
		
		
		westPanel = new JPanel();
		JLabel list = new JLabel("목록");
		registerBtn=new JButton("제품등록");
		JLabel blankLbl = new JLabel(" ");
		update=new JButton("정보변경");
		
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

		regFieldC1 = new JTextField(15);
		regFieldC2 = new JTextField(15);
		regFieldC3 = new JTextField(15);
		regFieldC4 = new JTextField(15);
		regFieldC5 = new JTextField(15);
		regFieldC6 = new JTextField(15);
		
		saveBtn = new JButton("저장");
		uploadBtn = new JButton("업로드");
		
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
		
		String[][] regRows = {
				{"","","","","",""}
				// JTable을 위한 임시데이터
				/*
				{"예) Camera-R30","R3067","S20201016R1","200","20201016","20301015"},
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
		
		//JPanel rBotPanel = new JPanel();
		
		//Top
		
		JLabel readLabel1, readLabel2, readLabel3;
		JTextField readField1, readField2, readField3;
		
		
		readLabel1=new JLabel("제품명");
		readLabel2=new JLabel("제품코드");
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
		
		// 중앙 테이블
		String[] readColumns = {"제품명","제품코드","Lot No","수량(Qty)","생산일자","만료일자"};
		
		String[][] readRows = {
				{"","","","","",""}
		};
		
		DefaultTableModel readTableData = new DefaultTableModel(readRows, readColumns);
		JScrollPane readTablePane = new JScrollPane(new JTable(readTableData));
		
		readPanel.add(readTablePane, BorderLayout.CENTER);
		
		// Bottom
		
		
		
		
		// 전체탭 관리
		tabs.addTab("register", split2nd);
		tabs.addTab("read", readPanel);
		tabs.addTab("update", new JLabel());
		tabs.addTab("delete", new JLabel());
		
		
		//tab에 대한 접근여부 설정
		tabs.setEnabledAt(2, false);
		tabs.setEnabledAt(3, false);
		//index번호로 JTabbedpane의 활성화 창 선택
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
