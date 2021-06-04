package erp.gui;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;

@SuppressWarnings("serial")
public class TestA extends JFrame {


	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					TestA frame = new TestA();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public TestA() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 1280, 720);
		setLocationRelativeTo(null);
		JPanel workPanel = new WorkPanel();
		setContentPane(workPanel);
		
		
		setVisible(true);
	}

}
