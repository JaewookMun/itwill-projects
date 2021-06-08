package erp.gui;


import javax.swing.JFrame;
import javax.swing.JPanel;
import java.awt.Toolkit;

public class ERPsysApp extends JFrame {
	private static final long serialVersionUID = 1L;
	public static final int DEFAULT_WIDTH = 1280;
	public static final int DEFAULT_HEIGHT = 720;
	
	JPanel logPanel, workPanel;
	
	public static boolean isLogOn;
	
	public ERPsysApp(String title) {
		super(title);
		setIconImage(Toolkit.getDefaultToolkit().getImage(ERPsysApp.class.getResource("/images/box.png")));
		setSize(1280, 720);
		setLocationRelativeTo(null);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		isLogOn=false;
		
		workPanel = new WorkPanel();
		logPanel = new LoginPanel();
		getContentPane().add(workPanel);
		getContentPane().add(logPanel);
		workPanel.setVisible(isLogOn);
		
		setResizable(false);
		setVisible(true);
		
		IsLogging logThread = new IsLogging();
		logThread.start();
		
	}
	
	public class IsLogging extends Thread {
		@Override
		public void run() {
			while(true) {
				if(isLogOn==true) {
					workPanel.setVisible(true);
					setContentPane(workPanel);
					//setResizable(true);
					break;
				}
				//Question ? WHY?? 위에서도 repaint()를 사용하는데 왜 아래에 없으면 안되는가?
				repaint();
			}
		}
	}
	
	
	public static void main(String[] args) {
		new ERPsysApp("Margin - Inventory Management System");
	}
}
