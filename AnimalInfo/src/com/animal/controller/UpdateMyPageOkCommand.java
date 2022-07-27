package com.animal.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.animal.domain.Member;
import com.animal.service.MemberService;

public class UpdateMyPageOkCommand implements Command{
	
	MemberService memberService = MemberService.getInstance();
	
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		int result = 0;
		HttpSession session = request.getSession();//세션값 불러오기
		Long member_uid = Long.parseLong(String.valueOf(session.getAttribute("session")));//세션에서 member_uid 불러오기
		String name = request.getParameter("name");//세션에서 ( ) 값 불러오기
		String email = request.getParameter("email");
		String phoneNum = request.getParameter("phoneNum");
		String address = request.getParameter("address");
		int age = Integer.parseInt(request.getParameter("age"));
		
		Member member = new Member(member_uid, name, email, phoneNum, address, age);
		System.out.println(member.toString());
		result = memberService.updateMember(member);//결과에 최종 맴버값 입력
		
		request.setAttribute("result", result);//결과 저장
	}
}
