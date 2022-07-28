package com.event.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.event.service.MemberService;

public class InputPwCodeOkCommand implements Command{
	
	MemberService memberService = MemberService.getInstance(); // 싱글톤 형태의 MemberService 정보를 가져옴.
	
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		int result = 0;
		
		String inputCode = request.getParameter("inputCode"); // 웹페이지에서 입력한 inputcode 불러옴.
		String code = request.getParameter("code"); // 메일로 받은 code와 비교할 code 입력한 값 불러옴.
		String id = request.getParameter("id"); // id 입력 값 불러옴.
		result = memberService.checkCode(code, inputCode); // MemberService 에 checkCode 메소드 호출하여 
														   //code , inputcode 매개변수로 넣고 수행결과 result 에 대입.
		
		request.setAttribute("result", result); // result 형태로 값 저장.
		request.setAttribute("id", id); // id 형태로 값 저장.
	}
}
