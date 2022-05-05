package jeju.olleh.dto;

/*
�̸�                  ��?       ����             
------------------- -------- -------------- 
PROGRAM_TYPE        NOT NULL NUMBER(1)      - PK
PROGRAM_NAME        NOT NULL VARCHAR2(40)   
PROGRAM_DESCRIPTION          VARCHAR2(2000) 
PROGRAM_CONTENT              VARCHAR2(2000) 
PROGRAM_INSTRUCTION          VARCHAR2(2000) 
 */

public class Program {
	private int programType;
	private String programName;
	private String programDescription;
	private String programContent;
	private String programInstruction;
	
	public Program() {
		// TODO Auto-generated constructor stub
	}

	public int getProgramType() {
		return programType;
	}

	public void setProgramType(int programType) {
		this.programType = programType;
	}

	public String getProgramName() {
		return programName;
	}

	public void setProgramName(String programName) {
		this.programName = programName;
	}

	public String getProgramDescription() {
		return programDescription;
	}

	public void setProgramDescription(String programDescription) {
		this.programDescription = programDescription;
	}

	public String getProgramContent() {
		return programContent;
	}

	public void setProgramContent(String programContent) {
		this.programContent = programContent;
	}

	public String getProgramInstruction() {
		return programInstruction;
	}

	public void setProgramInstruction(String programInstruction) {
		this.programInstruction = programInstruction;
	}
	
}
