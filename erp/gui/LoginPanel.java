package erp.gui;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.SystemColor;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
import javax.swing.border.LineBorder;

public class LoginPanel extends JPanel {
	private static final long serialVersionUID = 1L;
	
	//ÀÌ¹ÌÁöÀÇ width, height ±¸ÇÏ´Â ¹æ¹ý.
	
	private Image loginImage;
	
	
	
	
	protected JTextField idField;
	protected JPasswordField pwField;
	protected JButton loginBtn;
	
	public LoginPanel() {
		super();
		loginImage = new ImageIcon(getClass().getResource("/images/login.jpg")).getImage();
		setSize(ERPsysApp.DEFAULT_WIDTH, ERPsysApp.DEFAULT_HEIGHT);
		setLayout(null);
		
		
		JLabel margin = new JLabel("Margin");
		margin.setForeground(Color.BLACK);
		margin.setFont(new Font("¸»¶û¸»¶û Bold", Font.BOLD, 50));
		margin.setBounds(120, 120, 200, 63);
		add(margin);
		
		JLabel ERP = new JLabel("ERP");
		ERP.setForeground(Color.BLACK);
		ERP.setFont(new Font("Gill Sans MT", Font.PLAIN, 60));
		ERP.setBounds(332, 119, 117, 63);
		add(ERP);
		
		JLabel ver = new JLabel("Ver 1.0");
		ver.setForeground(Color.WHITE);
		ver.setFont(new Font("HYÁß°íµñ", Font.BOLD, 20));
		ver.setBounds(448, 150, 94, 30);
		add(ver);
		
		JLabel loginLogo = new JLabel("Log-in");
		loginLogo.setForeground(SystemColor.textHighlight);
		loginLogo.setFont(new Font("Arial", Font.BOLD, 50));
		loginLogo.setBounds(837, 122, 178, 63);
		add(loginLogo);
		
		
		JLabel idLabel = new JLabel("¾ÆÀÌµð");
		idLabel.setForeground(Color.BLACK);
		idLabel.setFont(new Font("HYÁß°íµñ", Font.BOLD, 20));
		idLabel.setBounds(837, 245, 200, 30);
		add(idLabel);
		
		JLabel pwLabel = new JLabel("ÆÐ½º¿öµå");
		pwLabel.setForeground(Color.BLACK);
		pwLabel.setFont(new Font("HYÁß°íµñ", Font.BOLD, 20));
		pwLabel.setBounds(837, 345, 200, 30);
		add(pwLabel);
		
		idField = new JTextField(10);
		idField.setBounds(837, 275, 367, 45); //45
		idField.setFont(new Font("Yu Gothic Medium", Font.PLAIN, 16));
		idField.setBorder(new LineBorder(Color.LIGHT_GRAY));
		add(idField);
				
		pwField = new JPasswordField(10);
		pwField.setBounds(837, 375, 367, 45);
		pwField.setFont(new Font("±¼¸²", Font.PLAIN, 15));
		pwField.setBorder(new LineBorder(Color.LIGHT_GRAY));
		add(pwField);
		
		loginBtn = new JButton("·Î±×ÀÎ");
		loginBtn.setBackground(new Color(100, 149, 237));
		loginBtn.setBounds(842, 520, 368, 58);	//520
		loginBtn.setFocusPainted(false);
		loginBtn.setFont(new Font("¸¼Àº °íµñ", Font.BOLD, 20));
		loginBtn.setForeground(Color.WHITE);
		loginBtn.setBorder(new LineBorder(Color.LIGHT_GRAY));
		add(loginBtn);

		
		setVisible(true);
	}
	
	
	@Override
	protected void paintComponent(Graphics g) {
		g.drawImage(loginImage, 0, 0, ERPsysApp.DEFAULT_WIDTH, ERPsysApp.DEFAULT_HEIGHT, this);
	}
	
	
}
