package erp.gui;


import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;

import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class ERPsysApp extends JFrame {
	private static final long serialVersionUID = 1L;
	public static final int DEFAULT_WIDTH = 1280;
	public static final int DEFAULT_HEIGHT = 720;
	
	private String adminId = "admin";
	private String adminPw = "admin12";
	
	
	LoginPanel logPanel;
	WorkPanel workPanel;
	
	public static boolean isLogOn;
	
	public ERPsysApp(String title) {
		super(title);
		setIconImage(Toolkit.getDefaultToolkit().getImage(ERPsysApp.class.getResource("/images/box.png")));
		setSize(DEFAULT_WIDTH, DEFAULT_HEIGHT);
		setLocationRelativeTo(null);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		isLogOn=false;
		
		workPanel = new WorkPanel();
		logPanel = new LoginPanel();
		getContentPane().add(workPanel);
		getContentPane().add(logPanel);
		workPanel.setVisible(isLogOn);
		
		logPanel.loginBtn.addActionListener(new ActionListener() {
			@SuppressWarnings("deprecation")
			@Override
			public void actionPerformed(ActionEvent e) {
				if(logPanel.idField.getText().equals(adminId) && logPanel.pwField.getText().equals(adminPw)) {
					isLogOn = true;
					logPanel.setVisible(!isLogOn);
					workPanel.setVisible(isLogOn);
					setContentPane(workPanel);
					JOptionPane.showMessageDialog(null, "로그인에 성공하였습니다.");
				} else if(logPanel.idField.getText().equals("") || logPanel.pwField.getText().equals("") ){
					JOptionPane.showMessageDialog(null, "아이디와 비밀번호를 입력해주세요.", "에러", JOptionPane.ERROR_MESSAGE);
				} else {
					JOptionPane.showMessageDialog(null, "가입하지 않은 아이디이거나, 잘못된 비밀번호입니다.", "에러", JOptionPane.ERROR_MESSAGE);
				}
			}
		});
		
		logPanel.idField.addKeyListener(new KeyEventHandler());
		logPanel.pwField.addKeyListener(new KeyEventHandler());
		
		
		workPanel.logoutBtn.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				isLogOn = false;
				logPanel.setVisible(!isLogOn);
				workPanel.setVisible(isLogOn);
				setContentPane(logPanel);
				JOptionPane.showMessageDialog(null, "정상적으로 로그아웃 되었습니다.");
				logPanel.idField.setText("");
				logPanel.pwField.setText("");
				
			}
		});
		
		setResizable(false);
		setVisible(true);
	}
	
	public class KeyEventHandler extends KeyAdapter {
		@SuppressWarnings("deprecation")
		@Override
		public void keyPressed(KeyEvent e) {
			if(e.getKeyCode()==KeyEvent.VK_ENTER) {
				if(logPanel.idField.getText().equals(adminId) && logPanel.pwField.getText().equals(adminPw)) {
					isLogOn = true;
					logPanel.setVisible(!isLogOn);
					workPanel.setVisible(isLogOn);
					setContentPane(workPanel);
					JOptionPane.showMessageDialog(null, "로그인에 성공하였습니다.");

				} else if(logPanel.idField.getText() == "" && logPanel.pwField.getText() == "" ){
					JOptionPane.showMessageDialog(null, "아이디와 비밀번호를 입력해주세요.", "에러", JOptionPane.ERROR_MESSAGE);
				} else {
					JOptionPane.showMessageDialog(null, "가입하지 않은 아이디이거나, 잘못된 비밀번호입니다.", "에러", JOptionPane.ERROR_MESSAGE);
				}
			}
		}
	}
		

	
	public static void main(String[] args) {
		new ERPsysApp("Margin - Inventory Management System");
	}
}
