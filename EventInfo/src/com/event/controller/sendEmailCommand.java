package com.event.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.event.domain.Member;
import com.event.service.MemberService;

public class sendEmailCommand implements Command{
	
	MemberService memberService = MemberService.getInstance(); // 싱글톤 형태의 MemberService 정보를 가져옴.
	
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id"); // 비밀번호 찾기에서 입력한 id 값 가져옴
		String phoneNum = request.getParameter("phoneNum"); // 비밀번호 찾기에서 입력한 phoneNum 가져옴.
		String code = null; 
		int result = 0; 
		//회원정보 아이디로 찾기
		Member member = memberService.findMemberById(id); // MemberService에서 findMemberById 메소드 호출하여 
														  // 매개변수로 id 값 집어넣고 나온 결과 member에 저장
		
		if(member == null) {
			result = 2;	//2는 아이디 오류 
		}else if(phoneNum.equals(member.getPhoneNum())) {
			try {
				code = memberService.findPwSendEmail(member.getEmail());
				result = 1;	//메일 성공시 1
			}catch(Exception e) {
				e.printStackTrace(); // 오류 발생시 메세지 출력.
				result = 3;
			}
		}else {
			result = 0; //0은 전화번호 오류
		}
		System.out.println(code);
		request.setAttribute("result", result); // result 형태로 값 저장.
		request.setAttribute("code", code); // code 형태로 값 저장.
		request.setAttribute("id", id); // id 형태로 값 저장.
	}
}
