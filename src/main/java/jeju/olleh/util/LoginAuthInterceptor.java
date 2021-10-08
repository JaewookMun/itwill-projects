package jeju.olleh.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import jeju.olleh.dto.Member;
import jeju.olleh.exception.NoRightToAccessException;

//비로그인 사용자면 예외 발생시키는 인터셉터
public class LoginAuthInterceptor implements HandlerInterceptor{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws NoRightToAccessException {
		
		HttpSession session = request.getSession();
		
		Member loginMember=(Member)session.getAttribute("loginMember");
		//비로그인 사용자일 경우
		if(loginMember == null) {
			throw new NoRightToAccessException("해당 요청을 위한 권한이 없습니다. 로그인 상태를 확인해주세요.");
		}
		
		//차녁아 관리자 인터셉터는 따로 만들엌ㅋㅋ
		//관리자일 경우 관리자 페이지로 보내고 싶음...
		/*
		if(loginMember.getStatus()==9) {
			response.sendRedirect("/admin/admin_main");
			return true;
		}
		*/
		return true;
	}
}
