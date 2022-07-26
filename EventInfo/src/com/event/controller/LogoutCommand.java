package com.event.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.event.service.MemberService;

public class LogoutCommand implements Command{
	
	MemberService memberService = MemberService.getInstance(); // 싱글톤 형태의 MemberService 정보를 가져옴.
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		memberService.logout(request); // MemberService의 logout 메소드 호출하여 수행.
		System.out.println("로그아웃 성공"); // 수행 결과 출력.
	}
}
