package erp.gui;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Font;
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
import javax.swing.SwingConstants;
import javax.swing.table.DefaultTableModel;

public class WorkPanel extends JPanel {
	private static final long serialVersionUID = 1L;
	
	private JButton logoutBtn, infoBtn, exitBtn;
	private JButton register, update;
	private JButton readBtn;
	private JPanel westPanel;
	
	
	public WorkPanel() {
		super();
		
		setSize(ERPsysApp.DEFAULT_WIDTH, ERPsysApp.DEFAULT_HEIGHT);
		setLayout(new BorderLayout());
		
		
		//[tool bar]
		JToolBar toolbar = new JToolBar();
		toolbar.setFloatable(false);
		toolbar.setBackground(new Color(240,240,240));
		
		infoBtn = new JButton("정보");
		logoutBtn=new JButton("로그아웃");
		exitBtn = new JButton("종료");
		
		JLabel title = new JLabel("재고관리 시스템");
		title.setVerticalAlignment(SwingConstants.BOTTOM);
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
		for(int i=0; i<95; i++) {
			toolbar.addSeparator();
		}
		toolbar.add(title);
		
		add(toolbar, BorderLayout.NORTH);
		
		JSplitPane split1st = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT);
		
		
		westPanel = new JPanel();
		
		JLabel list = new JLabel("목록");
		register=new JButton("제품등록");
		update=new JButton("정보변경");
		
		list.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
		
		westPanel.add(list);
		westPanel.add(register);
		westPanel.add(update);
		
		westPanel.setLayout(new BoxLayout(westPanel, BoxLayout.Y_AXIS));
		westPanel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
		
		
		add(westPanel, BorderLayout.WEST);
		
		
		
		
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
		
		JTabbedPane tabs = new JTabbedPane();
		
		
		JSplitPane split2nd = new JSplitPane(JSplitPane.VERTICAL_SPLIT);
		
		JPanel inputPanel = new JPanel();
		JPanel[] conPanels = new JPanel[3];
		
		for(int i=0; i<conPanels.length; i++) {
			conPanels[i]=new JPanel();
		}
		
		String[] columns = {"제품명","제품코드","Lot No","수량(Qty)","생산일자","만료일자"};
		
		String[][] rows = {
				// JTable을 위한 임시데이터
				{"예) Camera-R30","R3067","S20201016R1","200","20201016","20301015"},
				{"Battery-T21","T2166","S20210314T2","150","20210314","20310313"},
				{"Board-D40","D4066","A20191223D2","300","20191223","20341222"},
				{"Sponge-G80","G8083","A20191130G1","400","20191130","20341129"},
				{"Sponge-G80","G8083","A20191130G1","400","20191130","20341129"},
				{"Fabric-C18","C1870","A20210421C2","600","20210421","20360420"}
		};
		
		DefaultTableModel tableData = new DefaultTableModel(rows, columns);
		JScrollPane tablePane = new JScrollPane(new JTable(tableData));
		
		
		//
		JLabel pName = new JLabel("제품명 :");
		JTextField nameFd = new JTextField(10);
		JLabel pCode = new JLabel("제품코드 :");
		JTextField codeFd = new JTextField(10);
		JLabel lotNo = new JLabel("Lot No :");
		JTextField lotFd = new JTextField(10);
		
		JLabel qty = new JLabel("수량 :");
		JTextField qtyFd = new JTextField(10);
		JLabel mfgDate = new JLabel("생산일자 :");
		JTextField mDateFd = new JTextField(10);
		JLabel exDate = new JLabel("만료일자 :");
		JTextField exDateFd = new JTextField(10);
		
		readBtn = new JButton("조회");
		
		
		
		conPanels[0].add(pName);
		conPanels[0].add(nameFd);
		conPanels[0].add(pCode);
		conPanels[0].add(codeFd);
		conPanels[0].add(lotNo);
		conPanels[0].add(lotFd);
		
		conPanels[1].add(qty);
		conPanels[1].add(qtyFd);
		conPanels[1].add(mfgDate);
		conPanels[1].add(mDateFd);
		conPanels[1].add(exDate);
		conPanels[1].add(exDateFd);
		
		conPanels[2].add(readBtn);
		
		inputPanel.setLayout(new BorderLayout());
		inputPanel.add(conPanels[0], BorderLayout.NORTH);
		inputPanel.add(conPanels[1], BorderLayout.CENTER);
		inputPanel.add(conPanels[2], BorderLayout.SOUTH);
		
		
		/*
		inputPanel.add(pName);
		inputPanel.add(nameFd);
		inputPanel.add(pCode);
		inputPanel.add(codeFd);
		inputPanel.add(lotNo);
		inputPanel.add(lotFd);
		inputPanel.add(qty);
		inputPanel.add(qtyFd);
		inputPanel.add(mfgDate);
		inputPanel.add(mDateFd);
		inputPanel.add(exDate);
		inputPanel.add(exDateFd);
		inputPanel.add(readBtn);
		*/
		
		split2nd.setTopComponent(inputPanel);
		split2nd.setBottomComponent(tablePane);
		split2nd.setDividerSize(8);
				
		
		tabs.addTab("create", split2nd);
		tabs.addTab("read", new JLabel());
		tabs.addTab("update", new JLabel());
		tabs.addTab("delete", new JLabel());
		
		
		//tab에 대한 접근여부 설정
		tabs.setEnabledAt(2, false);
		tabs.setEnabledAt(3, false);
		//index번호로 JTabbedpane의 활성화 창 선택
		tabs.setSelectedIndex(0);
		
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
