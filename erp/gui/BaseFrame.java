package erp.gui;

import java.awt.Color;
import java.awt.Container;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.util.ArrayList;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
import javax.swing.border.LineBorder;

public class BaseFrame extends JFrame {
	private static final long serialVersionUID = 1L;
	public static final int JFRAME_WIDTH = 1280;
	public static final int JFRAME_HEIGHT = 720;
	
	private String adminId = "admin";
	private String adminPw = "a1234";
	
	
	private Image background /*, testImage*/;
	private JTextField idField;
	private JPasswordField pwField;
	private JButton loginBtn, logoutBtn;
	
	
	private ArrayList<JPanel> panels;
	
	@SuppressWarnings("serial")
	public BaseFrame(String title) {
		super(title);
		setSize(JFRAME_WIDTH, JFRAME_HEIGHT);
		setLocationRelativeTo(null);
		setResizable(false);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		
		background= new ImageIcon(getClass().getResource("/images/login.jpg")).getImage();
		//testImage = new ImageIcon(getClass().getResource("/images/city.jpg")).getImage();
		panels = new ArrayList<JPanel>();
		
		
		//JPanel loginPanel = new JPanel();
		JPanel loginPanel = new JPanel() {
			@Override
			public void paint(Graphics g) {
				super.paint(g);
				g.drawImage(background, 0, 0, JFRAME_WIDTH, JFRAME_HEIGHT, this);
			}
		};
		loginPanel.setLayout(null);
		
		JPanel createPanel = new JPanel() {
			
			@Override
			public void paint(Graphics g) {
				super.paint(g);
				//g.drawImage(testImage, 0, 0, JFRAME_WIDTH, JFRAME_HEIGHT, this);
			}
		};
		createPanel.setLayout(null);
		/*
		JPanel readPanel = new JPanel(null);
		JPanel updatePanel = new JPanel(null);
		JPanel deletePanel = new JPanel(null);
		*/
		panels.add(loginPanel);
		panels.add(createPanel);
		
		/*
		panels.add(readPanel);
		panels.add(updatePanel);
		panels.add(deletePanel);
		*/
		
		setContentPane(loginPanel);
		
		
		idField = new JTextField(10);
		idField.setBounds(837, 275, 367, 45); //45
		idField.setFont(new Font("Yu Gothic Medium", Font.PLAIN, 16));
		idField.setBorder(new LineBorder(Color.LIGHT_GRAY));
		loginPanel.add(idField);
		
		
		
		pwField = new JPasswordField(10);
		pwField.setBounds(837, 375, 367, 45);
		pwField.setFont(new Font("굴림", Font.PLAIN, 15));
		pwField.setBorder(new LineBorder(Color.LIGHT_GRAY));
		loginPanel.add(pwField);
		
		pwField.addKeyListener(new KeyAdapter() {
			@SuppressWarnings("deprecation")
			@Override
			public void keyPressed(KeyEvent e) {
				if(e.getKeyCode()==KeyEvent.VK_ENTER) {
					if(idField.getText().equals(adminId) && pwField.getText().equals(adminPw)) {
						setContentPane(createPanel);
						logoutBtn=new JButton("로그아웃");
						logoutBtn.setBounds(1150, 20, 100, 30);
						logoutBtn.setBackground(new Color(100, 149, 237));
						createPanel.add(logoutBtn);
						
						logoutBtn.addActionListener(new ActionListener() {
							
							@Override
							public void actionPerformed(ActionEvent e) {
								setContentPane(loginPanel);
								repaint();
							}
							
						});
					} else {
						JOptionPane.showMessageDialog(loginPanel,"입력 값을 확인해주세요.", "에러", JOptionPane.ERROR_MESSAGE);
					}
				}
			}
		
		});
		
		
		loginBtn = new JButton("로그인");
		loginPanel.add(loginBtn);
		loginBtn.setBackground(new Color(100, 149, 237));
		loginBtn.setBounds(842, 520, 368, 58);	//520
		loginBtn.setFocusPainted(false);
		loginBtn.setFont(new Font("맑은 고딕", Font.BOLD, 20));
		loginBtn.setForeground(Color.WHITE);
		//loginBtn.setBorderPainted(false);
		loginBtn.setBorder(new LineBorder(Color.LIGHT_GRAY));
		
		loginBtn.addActionListener(new ActionListener() {
			
			@SuppressWarnings("deprecation")
			@Override
			public void actionPerformed(ActionEvent e) {
				if(idField.getText().equals(adminId) && pwField.getText().equals(adminPw)) {
					setContentPane(createPanel);
					logoutBtn=new JButton("로그아웃");
					logoutBtn.setBounds(1150, 20, 100, 30);
					logoutBtn.setBackground(new Color(100, 149, 237));
					createPanel.add(logoutBtn);
					
					logoutBtn.addActionListener(new ActionListener() {
						
						@Override
						public void actionPerformed(ActionEvent e) {
							setContentPane(loginPanel);
							repaint();
						}
						
					});
				} else {
					JOptionPane.showMessageDialog(loginPanel,"입력 값을 확인해주세요.", "에러", JOptionPane.ERROR_MESSAGE);
				}
			}
		});
		
		
		setVisible(true);
	}
	/*
	@Override
	public void paint(Graphics g) {
		//super.paint(g);
		
		g.drawImage(background, 0, 0, JFRAME_WIDTH, JFRAME_HEIGHT, this);
	}
	*/
	
	@Override
	public void setContentPane(Container contentPane) {
		super.setContentPane(contentPane);
		
		for(JPanel p : panels) {
			if(p == contentPane) {
				p.setVisible(true);
				continue;
			} else {
				p.setVisible(false);
			}
		}
	}
	
			
	
}
