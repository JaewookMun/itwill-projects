package jeju.olleh.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;

import jeju.olleh.dto.BoardForm;
import jeju.olleh.dto.BoardPage;
import jeju.olleh.dto.BoardsPager;
import jeju.olleh.dto.CommentForm;
import jeju.olleh.dto.FileBoard;
import jeju.olleh.exception.NoRightToAccessException;
import jeju.olleh.service.BoardService;
import jeju.olleh.service.CommentService;

@Controller
public class BoardController {

	List<BoardForm> addTestList() {
		List<BoardForm> list = new ArrayList<BoardForm>();
		for (int i = 0; i < 5; ++i) {
			BoardForm boardForm = new BoardForm();
			boardForm.setNo(i);
			boardForm.setTitle(i + " title");
			boardForm.setMemberNo(1);
			boardForm.setUserName(i + " userName");
			boardForm.setDate(i + " date");
			boardForm.setContent(i + " content");

			list.add(boardForm);
		}
		return list;
	}

	BoardForm addTestboardForm(int no) {
		BoardForm boardForm = new BoardForm();
		boardForm.setNo(no);
		boardForm.setTitle(no + " title");
		boardForm.setUserName(no + " userName");
		boardForm.setDate(no + " date");
		boardForm.setContent("");
		return boardForm;
	}

	@Autowired
	private BoardService boardService;
	@Autowired
	private CommentService commentService;

	@Autowired
	private WebApplicationContext context;

	@GetMapping("/boards/cheat")
	public String cheatCreateBoard(Model model) {
		List<BoardForm> boardList = addTestList();
		for (var boardForm : boardList) {
			// boardService.wrteBoard(boardForm);
		}
		return "redirect:/boards";
	}

	/*
	 * @GetMapping("/boards") public String showBoardList(@RequestParam(value =
	 * "category", defaultValue = "1") int category, Model model) {
	 * System.out.println("boardListRead"); List<BoardForm> boardList =
	 * boardService.getBoardList(category);
	 * 
	 * // temp // List<BoardForm> boardList = addTestList();
	 * 
	 * model.addAttribute("boardList", boardList);
	 * 
	 * return "/boards/boardList"; }
	 */

	@GetMapping("/boards")
	public String showBoardListPage(@ModelAttribute("page") BoardPage boardPage, Model model) {
		System.out.println("showBoardListPage");

		System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		System.out.println("boardPage " + boardPage.getSearchText());
		System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~");

		BoardsPager boardsPager = boardService.getBoardList2(boardPage);
		model.addAttribute("boardList", boardsPager.getBoardList());
		model.addAttribute("pager", boardsPager.getMyPager());
		if (boardPage.getCategory() == 1) {
			model.addAttribute("boardNoticeList", boardService.getBoardNoticeList());
		}

		return "boards/boardList";
	}

	@GetMapping("/boards/{boardNo}")
	public String showBoard(@PathVariable(name = "boardNo") int boardNo, Model model) {
		System.out.println("boardRead");
		BoardForm boardForm = boardService.getBoardForm(boardNo);

		FileBoard fileBoard = boardService.getFileBoardByBoardNo(boardNo);

		// test
		// BoardForm boardForm = addTestboardForm(boardNo);

		model.addAttribute("boardForm", boardForm);
		model.addAttribute("fileBoard", fileBoard);
		model.addAttribute("commentList", boardService.getCommentsList(boardNo));

		return "boards/boardRead";
	}

	@GetMapping("/boards/write")
	public String showCreateBoard(Model model) {
		System.out.println("boardWrite");
		// 로그인 안되면 로그인페이지로..

		// 회원정보 가져오기
		/*
		 * // int member_no = 1; String userName = ""; //
		 * memberService.getUsername(member_no); model.addAttribute("userName",
		 * userName);
		 */

		// test
		//BoardForm boardForm = addTestboardForm(0);
		//model.addAttribute("boardForm", boardForm);

		BoardForm boardForm = new BoardForm();
		boardForm.setCategory(5);
		boardForm.setContent("");
		model.addAttribute("boardForm", boardForm);

		return "boards/boardWrite";
	}

	@PostMapping("/boards/write")
	public String createBoard(@ModelAttribute("boardForm") BoardForm boardForm, 
							@RequestParam(value="notice", required = false) String notice,
							 Model model)
			throws IllegalStateException, IOException {

		if(notice != null) {
			boardForm.setStatus(9);
		}
		
		int boardNo = boardService.writeBoard(boardForm);

		// test
		// BoardForm boardForm = addTestboardForm(no);
		// model.addAttribute("boardForm", boardForm);

		return "redirect:/boards/" + boardNo;
	}

	@GetMapping("/boards/{boardNo}/modify")
	public String modifyBoardForm(@PathVariable(name = "boardNo") int boardNo, Model model) {
		System.out.println("getBoardModify " + boardNo);
		BoardForm boardForm = boardService.getBoardForm(boardNo);

		model.addAttribute("boardForm", boardForm);

		return "boards/boardWrite";
	}

	@PostMapping("/boards/{boardNo}/modify")
	public String modifyBoard(@PathVariable(name = "boardNo") int boardNo, @ModelAttribute("form") BoardForm form) {
		System.out.println("postModifyBoard " + boardNo);
		boardService.modifyBoard(boardNo, form);
		return "redirect:/boards/" + boardNo;
	}

	@RequestMapping("/boards/{boardNo}/remove")
	public String removeBoard(@PathVariable(name = "boardNo") int boardNo, HttpSession session) {
		System.out.println("removeBoard " + boardNo);
		// 검증필요

		boardService.deleteBoard(boardNo);
		return "redirect:/boards";
	}

	@PostMapping("boards/comment/add")
	public String addComment(@ModelAttribute("form") CommentForm form) {
		System.out.println("addComment ");

		commentService.writeComment(form);

		return "redirect:/boards/" + form.getBoardNo();
	}

	@RequestMapping("download/{fileNo}")
	public String fileDownlaod(@PathVariable int fileNo, Model model) {
		FileBoard fileBoard = boardService.getFileBoard(fileNo);

		model.addAttribute("uploadDir",
				context.getServletContext().getRealPath("/WEB-INF/upload") + fileBoard.getFolders());
		model.addAttribute("uploadFilename", fileBoard.getUpload());
		model.addAttribute("originFilename", fileBoard.getOrigin());

		return "fileDownload";
	}
	

	@ExceptionHandler(NoRightToAccessException.class)
	public String loginExceiptionHandler(NoRightToAccessException exception, Model model) {
		
		return "redirect:/member/login";
	}

}
