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
		
		JButton ok=new JButton("Ȯ��");
		ok.setFont(new Font("����", Font.BOLD, 13));
		ok.setBounds(150, 380, 65, 30);
		getContentPane().add(ok);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(26, 60, 318, 299);
		getContentPane().add(scrollPane);
		
		JTextArea textArea = new JTextArea();
		textArea.setText(""
				+ "\n"
				+ "�� M-JW company ��\n"
				+ "\n"
				+ " [ ȸ������ ]\n"
				+ " *������ǰ : ī�޶�, ���͸�, ����, ������, ����\n"
				+ " *��ġ : \n"
				+ "  - �繫�� : ����Ư���� ������ ���ﵿ\n"
				+ "  - ��1���� : ��⵵ �Ȼ�� (����,������,���� ����)\n"
				+ "  - ��2���� : ��⵵ ������ (ī�޶�, ���͸� ����)\n"
				+ "\n"
				+ " [ ���α׷� ���� ]\n"
				+ "  M-JW company�� ���� ��ǰ ������ ���α׷� \n"
				+ "\n"
				+ " - ������� \n"
				+ "  1. ����� : ������ ����� ��ǰ�� ��ǰ���� ���\n"
				+ "  2. �����ȸ �� ���� : ��ϵ� ��ǰ������ ��ȸ �� ����\n"
				+ "  3. (To be updated)\n"
				+ "\n"
				+ " - �ʼ� �Է�����\n"
				+ "   1.��ǰ��, 2.��ǰ�ڵ�, 3.��ġ��ȣ, 4.��ġ����,\n"
				+ "   5.��������, 6.��ȿ�Ⱓ ��������\n"
				+ "\n"
				+ " - Definition \n"
				+ "  * ��ǰ�� : ������ǰ + ����\n"
				+ "     e.g.) Camera-R30,  Board-D40,  Battery-T21\n"
				+ "     , Sponge-G80,  Fabric-C18\n"
				+ "\n"
				+ "  * ��ǰ�ڵ� : ��ǰ���� + ��ǰ�� ù������ ASCII�ڵ尪\n"
				+ "\n"
				+ "  * LotNo : ������� + �������� + ��ǰ���� + ������Ʈ\n"
				+ ""
				+ "   ��) 2020�� �������忡�� �������� ���� �������\n"
				+ "         ī�޶� ��ǰ�� lot id��?\n"
				+ "        >> S20201016R1\n"
				+ "\n"
				+ "    S   -   �������: ���� or �Ȼ�(S / A)\n"
				+ "    20201016 - �������� [yyyymmdd]\n"
				+ "    R - ��ǰ�� ������ ���� ���� (ī�޶� = R)\n"
				+ "    1 - ������Ʈ (���� / ����)\n"
				+ "\n"
				+ "    ���)\n"
				+ "   S20201016R1 - ī�޶� ��ǰ\n"
				+ "   S20210314T2 - ���͸� ��ǰ\n"
				+ "   A20191223D2 - ���� ��ǰ\n"
				+ "   A20191130G1 - ������ ��ǰ\n"
				+ "   A20210421C2 - ������ǰ\n"
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
