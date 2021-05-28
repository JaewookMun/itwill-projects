package xyz.itwill.swing;

import java.awt.BorderLayout;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;

public class CalculatorApp extends JFrame {
	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JButton btnDelete, btnMultiple, btnDivision, btnSubtract, btnAdd, btnInit, btnArith, btnDot, btnEqual;
	private JButton b0,b1,b2,b3,b4,b5,b6,b7,b8,b9;
	private String output="";
	private JLabel label;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					CalculatorApp frame = new CalculatorApp();
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
	public CalculatorApp() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(200, 100, 450, 500);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		contentPane.setLayout(new BorderLayout(0, 0));
		setContentPane(contentPane);
		
		JPanel panel = new JPanel();
		contentPane.add(panel, BorderLayout.CENTER);
		panel.setLayout(new GridLayout(5, 4, 5, 5));
		
		
		JButton bSquare = new JButton("");
		bSquare.setFont(new Font("Arial Unicode MS", Font.BOLD, 16));
		panel.add(bSquare);
		
		btnInit = new JButton("C");
		btnInit.setFont(new Font("Arial Unicode MS", Font.BOLD, 16));
		panel.add(btnInit);
		
		btnDivision = new JButton("/");
		btnDivision.setFont(new Font("Arial Unicode MS", Font.BOLD, 16));
		panel.add(btnDivision);
		
		btnDelete = new JButton("<");
		btnDelete.setFont(new Font("Arial Unicode MS", Font.BOLD, 16));
		panel.add(btnDelete);
		
		b7 = new JButton("7");
		b7.setFont(new Font("Arial Black", Font.BOLD, 16));
		panel.add(b7);
		
		b8 = new JButton("8");
		b8.setFont(new Font("Arial Black", Font.BOLD, 16));
		panel.add(b8);
		
		b9 = new JButton("9");
		b9.setFont(new Font("Arial Black", Font.BOLD, 16));
		panel.add(b9);
		
		btnMultiple = new JButton("x");
		btnMultiple.setFont(new Font("Arial Unicode MS", Font.BOLD, 16));
		panel.add(btnMultiple);
		
		b4 = new JButton("4");
		b4.setFont(new Font("Arial Black", Font.BOLD, 16));
		panel.add(b4);
		
		b5 = new JButton("5");
		b5.setFont(new Font("Arial Black", Font.BOLD, 16));
		panel.add(b5);
		
		b6 = new JButton("6");
		b6.setFont(new Font("Arial Black", Font.BOLD, 16));
		panel.add(b6);
		
		btnAdd = new JButton("+");
		btnAdd.setFont(new Font("Arial Unicode MS", Font.BOLD, 16));
		panel.add(btnAdd);
		
		b1 = new JButton("1");
		b1.setFont(new Font("Arial Black", Font.BOLD, 16));
		panel.add(b1);
		
		b2 = new JButton("2");
		b2.setFont(new Font("Arial Black", Font.BOLD, 16));
		panel.add(b2);
		
		b3 = new JButton("3");
		b3.setFont(new Font("Arial Black", Font.BOLD, 16));
		panel.add(b3);
				
		btnSubtract = new JButton("-");
		btnSubtract.setFont(new Font("Arial Unicode MS", Font.BOLD, 16));
		panel.add(btnSubtract);
				
		btnArith = new JButton("+/-");
		btnArith.setFont(new Font("Arial Black", Font.BOLD, 16));
		panel.add(btnArith);

		b0 = new JButton("0");
		b0.setFont(new Font("Arial Black", Font.BOLD, 16));
		panel.add(b0);
				
		btnDot = new JButton(".");
		btnDot.setFont(new Font("Arial Black", Font.BOLD, 16));
		panel.add(btnDot);
		
		btnEqual = new JButton("=");
		btnEqual.setFont(new Font("Arial Unicode MS", Font.BOLD, 16));
		panel.add(btnEqual);
		
		label = new JLabel("0");
		label.setHorizontalAlignment(SwingConstants.RIGHT);
		label.setFont(new Font("D2Coding", Font.PLAIN, 22));
		contentPane.add(label, BorderLayout.NORTH);
		
		b0.addActionListener(new BtnHandler());
		b1.addActionListener(new BtnHandler());
		b2.addActionListener(new BtnHandler());
		b3.addActionListener(new BtnHandler());
		b4.addActionListener(new BtnHandler());
		b5.addActionListener(new BtnHandler());
		b6.addActionListener(new BtnHandler());
		b7.addActionListener(new BtnHandler());
		b8.addActionListener(new BtnHandler());
		b9.addActionListener(new BtnHandler());
		
		btnInit.addActionListener(new BtnHandler());
		btnDelete.addActionListener(new BtnHandler());
		btnArith.addActionListener(new BtnHandler());
		btnAdd.addActionListener(new BtnHandler());
		btnSubtract.addActionListener(new BtnHandler());
		btnMultiple.addActionListener(new BtnHandler());
		btnDivision.addActionListener(new BtnHandler());
		btnEqual.addActionListener(new BtnHandler());
		btnDot.addActionListener(new BtnHandler());
	}

	
		//�޼ҵ� �ȿ� ������ �����ϸ� ���������̱� ������ ���� ������ �ʱ�ȭ �ȴ�.
		//Q: ���������� �ȴٸ� �� �� ��ư���̿��� �������� ����Ǵ°�?
	public class BtnHandler implements ActionListener{
		
		@Override
		public void actionPerformed(ActionEvent e) {
			//JButton[] btnNumArr = {b0,b1,b2,b3,b4,b5,b6,b7,b8,b9};
			//JButton[] funcionKey = {btnInit, btnArith, btnDot, btnEqual, btnDelete};
			
			/*
			Object eventSource = e.getSource();

			if(eventSource == btnInit) {
				label.setText("0");
				output="";
			}
			*/
			/*			
			for(JButton btn : btnNumArr) {
				if(eventSource == btn) {
					output += btn.getText();
					label.setText(output);
				}
			}
			*/
			
			// Number, Arithmetic Operator, initial function
			String actionCommand = e.getActionCommand();
			
			switch(actionCommand) {
			case "C": output =""; label.setText("0"); break;
			
			case "+": output+="+"; label.setText(output); break;
			case "-": output+="-"; label.setText(output); break;	
			case "x": output+="x"; label.setText(output); break;
			case "/": output+="/"; label.setText(output); break;
			
			case "1": output+="1"; label.setText(output); break;
			case "2": output+="2"; label.setText(output); break;
			case "3": output+="3"; label.setText(output); break;
			case "4": output+="4"; label.setText(output); break;
			case "5": output+="5"; label.setText(output); break;
			case "6": output+="6"; label.setText(output); break;
			case "7": output+="7"; label.setText(output); break;
			case "8": output+="8"; label.setText(output); break;
			case "9": output+="9"; label.setText(output); break;
			case "0": output+="0"; label.setText(output); break;
			}
			
			if(actionCommand == "<") {
				if(output.length()==1) {
					output="";
					label.setText("0");
				}
				if(label.getText() == "0") {
					return;
				} else {
					output = output.substring(0, output.length()-1);
					label.setText(output);
				}
				return;
			}	
			
			//not working
			if(actionCommand == "+/-") {
				if(Integer.parseInt(label.getText())==0) return;
				if(Integer.parseInt(label.getText())>0) {
					output = "-"+output;
					label.setText(output);
				} 
				if(Integer.parseInt(label.getText())<0) {
					output = output.substring(1);
					label.setText(output);
				}
				return;
			}
			
			/*  Ver: 2 
			int preNum, postNum;
			if(actionCommand == "=") {
				if(output.indexOf("-") != -1) {
					preNum=Integer.parseInt(output.substring(0, output.indexOf("-")));
					postNum=Integer.parseInt(output.substring(output.indexOf("-")+1));
					output = Integer.toString(preNum-postNum);
				}
				if(output.indexOf("+") != -1) {
					preNum=Integer.parseInt(output.substring(0, output.indexOf("+")));
					postNum=Integer.parseInt(output.substring(output.indexOf("+")+1));
					output = Integer.toString(preNum+postNum);
				}
				if(output.indexOf("x") != -1) {
					preNum=Integer.parseInt(output.substring(0, output.indexOf("x")));
					postNum=Integer.parseInt(output.substring(output.indexOf("x")+1));
					output = Integer.toString(preNum*postNum);
				}
				if(output.indexOf("/") != -1) {
					preNum=Integer.parseInt(output.substring(0, output.indexOf("/")));
					postNum=Integer.parseInt(output.substring(output.indexOf("/")+1));
					output = Integer.toString(preNum/postNum);
				}
				label.setText(output);
				return;
			}
			*/
			
			
			/**
			 * [������ 1.]
			 * Exception �߻� ����: break; ���� �����ڹ迭 operA[]�� ����
			 * for���� ������ �����Ͽ� operator �� �ε����� '/' �� �����Ǵٽ�����.
			 *  
			 * [������ 2.]
			 * switch ~ case ������ ���ǿ� �´� ����� �����ϸ� break;�� ����
			 * ���� �������ϴµ� break;�� �����Ͽ� case "oper"������ ����� �� ������. 
			 */

			// Ver: 1 ����(+-*)�� ���ؼ� StringIndexOutOfBoundsException �߻�
			
			if(actionCommand == "=") {
				
				String[] operA = new String[]{"+","-","x","/"};
				int index=-1;
				for(int i=0; i<operA.length; i++) {
					index= output.lastIndexOf(operA[i]);
					if(index != -1) break;
				}
				
				int num1=Integer.parseInt(output.substring(0, index));
				String oper = output.substring(index, index+1);
				int num2=Integer.parseInt(output.substring(index+1));
				
				switch (oper) {
				case "+":
					output = (num1+num2)+""; break;
				case "-":
					output = (num1-num2)+""; break;
				case "x":
					output = (num1*num2)+""; break;
				case "/":
					output = (num1/num2)+""; break;
				}
				label.setText(output);
				if(output=="0") output="";
				return;
			}
			//
		
				
			
		}
	}
}
