package erp.gui;

import java.awt.Font;
import java.awt.SystemColor;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JLabel;
import javax.swing.SwingConstants;

public class InfoDialog extends JDialog {
	private static final long serialVersionUID = 1L;

	public InfoDialog() {
		setTitle("Information");
		setIconImage(Toolkit.getDefaultToolkit().getImage(InfoDialog.class.getResource("/images/box.png")));
		
		setSize(380,470);
		setLocationRelativeTo(null);
		getContentPane().setLayout(null);
		setResizable(false);
		
		JButton ok=new JButton("확인");
		ok.setFont(new Font("굴림", Font.BOLD, 13));
		ok.setBounds(150, 380, 65, 30);
		getContentPane().add(ok);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(26, 60, 318, 299);
		getContentPane().add(scrollPane);
		
		JTextArea textArea = new JTextArea();
		textArea.setText(""
				+ "\n"
				+ "『 M-JW company 』\n"
				+ "\n"
				+ " [ 회사정보 ]\n"
				+ " *생산제품 : 카메라, 배터리, 판자, 스펀지, 원단\n"
				+ " *위치 : \n"
				+ "  - 사무실 : 서울특별시 강남구 역삼동\n"
				+ "  - 제1공장 : 경기도 안산시 (판자,스펀지,원단 생산)\n"
				+ "  - 제2공장 : 경기도 수원시 (카메라, 배터리 생산)\n"
				+ "\n"
				+ " [ 프로그램 정보 ]\n"
				+ "  M-JW company의 생산 제품 재고관리 프로그램 \n"
				+ "\n"
				+ " - 제공기능 \n"
				+ "  1. 재고등록 : 서버에 생산된 제품의 제품정보 등록\n"
				+ "  2. 재고조회 및 변경 : 등록된 제품정보의 조회 및 변경\n"
				+ "  3. (To be updated)\n"
				+ "\n"
				+ " - 필수 입력정보\n"
				+ "   1.제품명, 2.제품코드, 3.배치번호, 4.배치물량,\n"
				+ "   5.생산일자, 6.유효기간 만료일자\n"
				+ "\n"
				+ " - Definition \n"
				+ "  * 제품명 : 생산제품 + 꼬리\n"
				+ "     e.g.) Camera-R30,  Board-D40,  Battery-T21\n"
				+ "     , Sponge-G80,  Fabric-C18\n"
				+ "\n"
				+ "  * 제품코드 : 제품꼬리 + 제품명 첫글자의 ASCII코드값\n"
				+ "\n"
				+ "  * LotNo : 생산장소 + 생산일자 + 제품꼬리 + 생산파트\n"
				+ ""
				+ "   예) 2020년 수원공장에서 오전조에 의해 만들어진\n"
				+ "         카메라 제품의 lot id는?\n"
				+ "        >> S20201016R1\n"
				+ "\n"
				+ "    S   -   생산장소: 수원 or 안산(S / A)\n"
				+ "    20201016 - 생산일자 [yyyymmdd]\n"
				+ "    R - 제품명 꼬리에 따라 설정 (카메라 = R)\n"
				+ "    1 - 생산파트 (오전 / 오후)\n"
				+ "\n"
				+ "    사례)\n"
				+ "   S20201016R1 - 카메라 제품\n"
				+ "   S20210314T2 - 배터리 제품\n"
				+ "   A20191223D2 - 판자 제품\n"
				+ "   A20191130G1 - 스펀지 제품\n"
				+ "   A20210421C2 - 원단제품\n"
				+ "\n"
				+ "\n\n\n\n\n\n"
				+ " * Version : margin ERP inventory management sys. 1.0\n"
				+ " * Developer : margin \n"
				+ "   at JavaProject  corp. Incheon, Korea\n"
				+ "");
		textArea.setCaretPosition(0);
		textArea.setEditable(false);
		textArea.setBackground(SystemColor.controlHighlight);
		
		scrollPane.setViewportView(textArea);
		
		JLabel lblNewLabel = new JLabel("Overview");
		lblNewLabel.setFont(new Font("Arial", Font.BOLD, 14));
		lblNewLabel.setHorizontalAlignment(SwingConstants.CENTER);
		lblNewLabel.setBounds(26, 20, 80, 22);
		getContentPane().add(lblNewLabel);

		
		ok.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				dispose();
				
			}
		});
	
		setVisible(true);
	}
}
