package com.animal.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.animal.domain.Member;
import com.animal.security.BCryptPasswordEncoder;
import com.animal.service.MemberService;

public class SignUpCommand implements Command{
	
	MemberService memberService = MemberService.getInstance(); // 싱글톤 형태의 MemberService 정보를 가져옴.
	
	BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder(); // 비밀번호 새로 인코딩할 객체 생성.
	
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		Long member_uid = null;
		String id = request.getParameter("id"); // 회원가입 페이지에서 입력한 id 불러옴.
		String pw = request.getParameter("pw"); // 회원가입 페이지에서 입력한 pw 불러옴.
		String name = request.getParameter("name"); // 회원가입 페이지에서 입력한 name 불러옴.
		String email = request.getParameter("email"); // 회원가입 페이지에서 입력한 email 불러옴.
		String phoneNum = request.getParameter("phoneNum"); // 회원가입 페이지에서 입력한 phoneNum 불러옴.
		String address = "";  // 회원가입 페이지에서 입력한 주소 불러옴.
		String addressA = request.getParameter("addressA"); // 회원가입 페이지에서 입력한 주소A 불러옴.
		String addressB = request.getParameter("addressB"); // 회원가입 페이지에서 입력한 주소B 불러옴.
		String addressC = request.getParameter("addressC"); // 회원가입 페이지에서 입력한 주소C 불러옴.
		address = addressA + " " + addressB + " " + addressC; // address 에 A + B + C 파트로 나눠서 입력한 주소 결과값 대입.
		String age2 = request.getParameter("age");  // 회원가입 페이지에서 입력한 나이 불러옴.
		int age;
		if(age2 == null) age = 0;
		else age = Integer.parseInt(age2);
		String gender = request.getParameter("gender"); // 회원가입 페이지에서 선택한 성별 불러옴.
		
		//암호화
		String encodePw = passwordEncoder.encode(pw); // 입력한 패스워드를 BCrypt 해싱 함수 로 다시 인코딩함.
		System.out.println("pw 암호화 : " + encodePw); // 인코딩 되어진 패스워드 출력
		
		Member member = new Member(member_uid, id, encodePw, name, email, phoneNum, address, age, gender); // member에 입력한 회원정보 대입
		int result = memberService.signUp(member); // MemberSerivce 에서 signUp 메소드 호출하여 member에 있는 매개변수대입하여 결과 result에 대입
		request.setAttribute("result", result); // result 형태로 값 저장.
	}
}
