package jeju.olleh.dto;

import java.io.File;
import java.io.IOException;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;

import com.google.common.io.Files;

public class FileBoard {
	static final String folderPath = "/boards";
	
	private int no;
	private int board_no;
	private String folders;
	private String origin;		//전달파일명
	private String upload;		//db에 저장하기 위해 업로드 고유 파일명

	private MultipartFile file;
	
	public static FileBoard createFileBoard(BoardForm boardForm) {
		FileBoard fileBoard = new FileBoard();
		fileBoard.setFolders(folderPath);
		fileBoard.setBoard_no(boardForm.getNo());
		fileBoard.setFile(boardForm.getFile());
		return fileBoard;
	}

	public boolean SettingProperty(WebApplicationContext context, String customPath) throws IllegalStateException, IOException {
		if (file.isEmpty()) {
			return false;
		}

		this.origin = file.getOriginalFilename();
		this.upload = System.currentTimeMillis() + "";

		String uploadDir = context.getServletContext().getRealPath("/WEB-INF/upload");

		if(!customPath.equals("")) {
			String imageDir = context.getServletContext().getRealPath(customPath);
			var image = new File(imageDir, upload);
			file.transferTo(image);
			Files.copy(image, new File(uploadDir, upload));
		}
		else {
			file.transferTo(new File(uploadDir, upload));
		}
		return true;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public String getFolders() {
		return folders;
	}

	public void setFolders(String folders) {
		this.folders = folders;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public String getUpload() {
		return upload;
	}

	public void setUpload(String upload) {
		this.upload = upload;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	@Override
	public String toString() {
		return super.toString() 
				+ ", no:" + no 
				+ ", baordNo:" + board_no
				+ ", folders:" + folders
				+ ", origin:" + origin
				+ ", upload:" + upload
				+ ", fileHash:" + file;
	}

}
