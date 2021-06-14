package erp.gui;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class UpdateDialog extends JDialog {
	private static final long serialVersionUID = 1L;
	
	JLabel subTitle;
	JLabel lbl1, lbl2, lbl3, lbl4, lbl5, lbl6;
	JTextField fd1, fd2, fd3, fd4, fd5;
	
	JButton updtBtn, cancelBtn;

	public UpdateDialog(JFrame frame, String title) {
		super(frame, title);
		setSize(425, 600);
		setLocationRelativeTo(null);
		
		JPanel mainPnl = new JPanel(new BorderLayout());
		
		JPanel subPnl1 = new JPanel(new FlowLayout(FlowLayout.LEFT));
		JPanel subPnl2 = new JPanel(new GridLayout(6,2));
		JPanel subPnl3 = new JPanel();
		
		

		subTitle = new JLabel("정보변경");

		lbl1 = new JLabel("제품명 :");
		lbl2 = new JLabel("제품코드 :");
		lbl3 = new JLabel("Lot No :");
		lbl4 = new JLabel("수량 :");
		lbl5 = new JLabel("생산일자 :");
		lbl6 = new JLabel("만료일자 :");
		
		String[] products= {"============","Camera-R30", "Battery-T21", "Board-D40", "Sponge-G80", "Fabric-C18"};
		JComboBox<String> comBox = new JComboBox<String>(products);
		comBox.setBackground(Color.WHITE);
		fd1 = new JTextField(15);
		fd1.setFocusable(false);
		fd1.setBackground(null);
		fd2 = new JTextField(15);
		fd3 = new JTextField(15);
		fd4 = new JTextField(15);
		fd5 = new JTextField(15);
		
		subPnl1.add(subTitle);
		
		subPnl2.add(lbl1);
		subPnl2.add(comBox);
		
		subPnl2.add(lbl2);
		subPnl2.add(fd1);
		
		subPnl2.add(lbl3);
		subPnl2.add(fd2);
		
		subPnl2.add(lbl4);
		subPnl2.add(fd3);
		
		subPnl2.add(lbl5);
		subPnl2.add(fd4);
		
		subPnl2.add(lbl6);
		subPnl2.add(fd5);
		
		
		updtBtn = new JButton("update");
		updtBtn.setFocusPainted(false);
		cancelBtn = new JButton("cancel");
		cancelBtn.setFocusPainted(false);
		
		subPnl3.add(updtBtn);
		subPnl3.add(cancelBtn);
		
		
		
		mainPnl.add(subPnl1, BorderLayout.NORTH);
		mainPnl.add(subPnl2, BorderLayout.CENTER);
		mainPnl.add(subPnl3, BorderLayout.SOUTH);
		
		setContentPane(mainPnl);
		
		
		
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
