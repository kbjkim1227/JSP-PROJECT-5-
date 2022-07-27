package com.animal.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.animal.domain.Member;
import com.animal.service.MemberService;

public class UpdateMyPageCommand implements Command{
	
	MemberService memberService = MemberService.getInstance(); // 싱글톤 형태로 되어있는 MemberService 정보를 가져옴
	
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession(); // Session 정보를 불러와 session에 대입
		Long member_uid = Long.parseLong(String.valueOf(session.getAttribute("session"))); // 문자열로 session 정보를 전달받고 다시 
		   																				   // long 타입으로 변환 후 member_uid 에 대입
		
		Member member = memberService.findMember(member_uid); // 회원정보 찾기 기능에 member_uid 매개변수로 대입 후 나온 결과값 member에 대입.
		
		
		request.setAttribute("member", member); // member 형태로 저장.
	}
}
