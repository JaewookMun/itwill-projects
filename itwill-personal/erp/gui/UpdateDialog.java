package erp.gui;

import java.awt.Color;
import java.awt.Font;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Vector;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.SwingConstants;

public class UpdateDialog extends JDialog {
	private static final long serialVersionUID = 1L;

	
	/**
	 * to be transfer into {@code ProductDTO} class<p>
	 * 
	 * {@code fd0} is for product name, {@code pCode} <br>
	 * {@code fd1} is for product code, {@code pCode} <br>
	 * {@code fd2} is for lot number, {@code lotNo} <br>
	 * {@code fd3} is for quantity, {@code qty}<br>
	 * {@code fd4} is for manufacturing date, {@code mfgDate} <br>
	 * {@code fd5} is for expiration date, {@code exDate} <br>
	 */
	protected JTextField fd0, fd1, fd2, fd3, fd4, fd5;
	protected JButton updateBtnInPnl;
	protected Vector<String> products;
	
	private JButton cancelBtn;

	public UpdateDialog(JFrame frame, String title) {
		super(frame, title);
		
		setIconImage(Toolkit.getDefaultToolkit().getImage(InfoDialog.class.getResource("/images/box.png")));
		
		setSize(400, 566);
		setLocationRelativeTo(null);
		setResizable(false);
		
		
		JPanel mainPnl = new JPanel();
		
		products=new Vector<String>();
		products.add("============");
		products.add("Camera-R30");
		products.add("Battery-T21");
		products.add("Board-D40");
		products.add("Sponge-G80");
		products.add("Fabric-C18");
		
		mainPnl.setLayout(null);
		
		setContentPane(mainPnl);
		
		
		JLabel subTitle = new JLabel("정보변경");
		subTitle.setHorizontalAlignment(SwingConstants.CENTER);
		subTitle.setFont(new Font("SansSerif", Font.BOLD | Font.ITALIC, 14));
		subTitle.setBounds(23, 24, 94, 30);
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
		
		fd0 = new JTextField();
		fd0.setColumns(10);
		fd0.setBounds(205, 71, 114, 31);
		fd0.setEditable(false);
		fd0.setForeground(Color.GRAY);
		mainPnl.add(fd0);

		fd1 = new JTextField();
		fd1.setColumns(10);
		fd1.setBounds(205, 133, 114, 30);
		fd1.setEditable(false);
		fd1.setForeground(Color.GRAY);
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
		
		updateBtnInPnl = new JButton("Update");
		updateBtnInPnl.setFont(new Font("Serif", Font.PLAIN, 14));
		updateBtnInPnl.setBounds(79, 434, 80, 30);
		updateBtnInPnl.setFocusPainted(false);
		mainPnl.add(updateBtnInPnl);
		
		cancelBtn = new JButton("Cancel");
		cancelBtn.setFont(new Font("Serif", Font.PLAIN, 14));
		cancelBtn.setBounds(226, 434, 80, 30);
		cancelBtn.setFocusPainted(false);
		mainPnl.add(cancelBtn);
		
		
		cancelBtn.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
			
				dispose();
				
			}
		});
		
		setVisible(true);
	}
	
	
	/**
	 * return all texts of components in {@code UpdateDialog} class.
	 * 
	 * @return {@code String[]}
	 */
	public String[] getAllTxts() {
		String[] txts = new String[6];
		
		txts[0]=fd0.getText();
		txts[1]=fd1.getText();
		txts[2]=fd2.getText();
		txts[3]=fd3.getText();
		txts[4]=fd4.getText();
		txts[5]=fd5.getText();
		
		return txts;
	}
	
}
