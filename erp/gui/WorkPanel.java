package erp.gui;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTabbedPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

public class WorkPanel extends JPanel {
	private static final long serialVersionUID = 1L;
	JButton logoutBtn;
	JPanel northPanel, westPanel, southPanel;
	
	public WorkPanel() {
		super();
		
		setSize(mainFrame.DEFAULT_WIDTH, mainFrame.DEFAULT_HEIGHT);
		setLayout(new BorderLayout());
		
		
		
		logoutBtn=new JButton("로그아웃");
		logoutBtn.setBounds(1150, 20, 85, 25);
		logoutBtn.setFont(new Font("굴림", Font.PLAIN, 13));
		logoutBtn.setBackground(new Color(100, 149, 237));
		add(logoutBtn);
		
		
		
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
		
		String[] columns = {"제품명","제품코드","Lot No","수량(Qty)","생산일자","만료일자"};
		
		String[][] rows = {
				// JTable을 위한 임시데이터
				{"예) Camera-R30","R3067","S20201016R1","200","20201016","20301015"},
				{"Battery-T21","T2166","S20210314T2","150","20210314","20310313"},
				{"Board-D40","D4066","A20191223D2","300","20191223","20341222"},
				{"Sponge-G80","G8083","A20191130G1","400","20191130","20341129"},
				{"Sponge-G80","G8083","A20191130G1","400","20191130","20341129"},
				{"Sponge-G80","G8083","A20191130G1","400","20191130","20341129"},
				{"Sponge-G80","G8083","A20191130G1","400","20191130","20341129"},
				{"Sponge-G80","G8083","A20191130G1","400","20191130","20341129"},
				{"Sponge-G80","G8083","A20191130G1","400","20191130","20341129"},
				{"Sponge-G80","G8083","A20191130G1","400","20191130","20341129"},
				{"Sponge-G80","G8083","A20191130G1","400","20191130","20341129"},
				{"Fabric-C18","C1870","A20210421C2","600","20210421","20360420"}
		};
		DefaultTableModel tableData = new DefaultTableModel(rows, columns);
		JScrollPane tablePane = new JScrollPane(new JTable(tableData));
		
		//add(tablePane, BorderLayout.CENTER);
		
		JTabbedPane tabs = new JTabbedPane();
		
		tabs.addTab("test1", new JPanel());
		tabs.addTab("test2", tablePane);
		add(tabs);
		
		
		logoutBtn.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				System.exit(0);
			}
			
		});
		
		//setVisible(true);
	}


}
