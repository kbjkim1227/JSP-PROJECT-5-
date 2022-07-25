package com.event.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.event.service.MemberService;

public class InputNewPwOkCommand implements Command{
	MemberService memberService = MemberService.getInstance(); // MemberService 정보를 싱글톤 형태로 가져옴.
	
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id"); // 비밀번호 변경 페이지에서 입력한 id를 불러옴
		String pw = request.getParameter("pw"); // 비밀번호 변경 페이지에서 입력한 pw를 불러옴
		int result = 0; // result 에 0 대입.
		try {
			System.out.println("변경할 pw:" + pw); // 위에서 입력 받은 pw 값을 출력 
			result = memberService.changePw(pw, id); // MemberService 에서 changePw 메소드 호출해 pw,id 대입하여 수행 후 result에 저장
			System.out.println("변경 완료");
		} catch (Exception e) {
			e.printStackTrace(); // 변경 실패 시 오류메세지 출력
			System.out.println("변경 실패");
		}
		request.setAttribute("result", result); // jsp 파일에 result 형태로 전달.
	}
}
