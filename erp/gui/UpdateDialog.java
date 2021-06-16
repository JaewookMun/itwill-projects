package erp.gui;

import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.SwingConstants;

public class UpdateDialog extends JDialog {
	private static final long serialVersionUID = 1L;
	private JComboBox<String> comBox;
	private JTextField fd1, fd2, fd3, fd4, fd5;
	private JButton updateBtn, cancelBtn;
	
	

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public UpdateDialog(JFrame frame, String title) {
		super(frame, title);
		setSize(400, 566);
		setLocationRelativeTo(null);
		
		
		JPanel mainPnl = new JPanel();
		
		String[] products= {"============","Camera-R30", "Battery-T21", "Board-D40", "Sponge-G80", "Fabric-C18"};
		mainPnl.setLayout(null);
		
		setContentPane(mainPnl);
		
		
		JLabel subTitle = new JLabel("정보변경");
		subTitle.setFont(new Font("SansSerif", Font.BOLD | Font.ITALIC, 14));
		subTitle.setBounds(33, 24, 94, 30);
		mainPnl.add(subTitle);
		
		
		JLabel lbl1 = new JLabel("제품명 :");
		lbl1.setFont(new Font("굴림", Font.BOLD, 13));
		lbl1.setHorizontalAlignment(SwingConstants.RIGHT);
		lbl1.setBounds(33, 64, 114, 44);
		mainPnl.add(lbl1);
		
		JLabel lbl2 = new JLabel("제품코드 :");
		lbl2.setFont(new Font("굴림", Font.BOLD, 13));
		lbl2.setHorizontalAlignment(SwingConstants.RIGHT);
		lbl2.setBounds(33, 124, 114, 44);
		mainPnl.add(lbl2);
		
		JLabel lbl3 = new JLabel("Lot No :");
		lbl3.setFont(new Font("굴림", Font.BOLD, 13));
		lbl3.setHorizontalAlignment(SwingConstants.RIGHT);
		lbl3.setBounds(33, 184, 114, 44);
		mainPnl.add(lbl3);
		
		JLabel lbl4 = new JLabel("수량 :");
		lbl4.setFont(new Font("굴림", Font.BOLD, 13));
		lbl4.setHorizontalAlignment(SwingConstants.RIGHT);
		lbl4.setBounds(33, 244, 114, 44);
		mainPnl.add(lbl4);
		
		JLabel lbl5 = new JLabel("생산일자 :");
		lbl5.setFont(new Font("굴림", Font.BOLD, 13));
		lbl5.setHorizontalAlignment(SwingConstants.RIGHT);
		lbl5.setBounds(33, 304, 114, 44);
		mainPnl.add(lbl5);
		
		JLabel lbl6 = new JLabel("만료일자 :");
		lbl6.setFont(new Font("굴림", Font.BOLD, 13));
		lbl6.setHorizontalAlignment(SwingConstants.RIGHT);
		lbl6.setBounds(33, 364, 114, 44);
		mainPnl.add(lbl6);
		
		
		comBox = new JComboBox(products);
		comBox.setBounds(205, 71, 114, 31);
		comBox.setBackground(Color.WHITE);
		mainPnl.add(comBox);
		
		fd1 = new JTextField();
		fd1.setColumns(10);
		fd1.setBounds(205, 133, 114, 30);
		fd1.setFocusable(false);
		fd1.setBackground(null);
		mainPnl.add(fd1);
		
		fd2 = new JTextField();
		fd2.setColumns(10);
		fd2.setBounds(205, 192, 114, 30);
		mainPnl.add(fd2);
		
		fd3 = new JTextField();
		fd3.setColumns(10);
		fd3.setBounds(205, 250, 114, 30);
		mainPnl.add(fd3);
		
		fd4 = new JTextField();
		fd4.setColumns(10);
		fd4.setBounds(205, 312, 114, 30);
		mainPnl.add(fd4);
		
		fd5 = new JTextField();
		fd5.setColumns(10);
		fd5.setBounds(205, 370, 114, 30);
		mainPnl.add(fd5);
		
		updateBtn = new JButton("update");
		updateBtn.setFont(new Font("Serif", Font.PLAIN, 14));
		updateBtn.setBounds(79, 434, 80, 30);
		updateBtn.setFocusPainted(false);
		mainPnl.add(updateBtn);
		
		cancelBtn = new JButton("cancel");
		cancelBtn.setFont(new Font("Serif", Font.PLAIN, 14));
		cancelBtn.setBounds(217, 434, 80, 30);
		cancelBtn.setFocusPainted(false);
		mainPnl.add(cancelBtn);
		
		
		comBox.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				switch (comBox.getSelectedItem().toString()) {
				case "Camera-R30" 	: fd1.setText("R3067"); break;
				case "Battery-T21" 	: fd1.setText("T2166"); break;
				case "Board-D40" 	: fd1.setText("D4066"); break;
				case "Sponge-G80" 	: fd1.setText("G8083"); break;
				case "Fabric-C18" 	: fd1.setText("C1870"); break;
				default : fd1.setText(""); break;
				}
			}
		});
		
		cancelBtn.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
			
				dispose();
				
			}
		});
		
		setVisible(true);
	}
}
