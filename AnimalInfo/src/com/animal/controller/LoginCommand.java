package com.animal.controller;

import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.animal.security.BCryptPasswordEncoder;
import com.animal.service.MemberService;

public class LoginCommand implements Command{
	
	MemberService memberService = MemberService.getInstance();  // 싱글톤 형태의 MemberService 정보를 가져옴.
	
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id"); // 로그인 페이지에서 입력한 id 값 가져옴.
		String pw = request.getParameter("pw"); // 로그인 페이지에서 입력한 pw 값 가져옴.
			
		int result = 0;
		try {
			result = memberService.checkLogin(id, pw, request); // MemberService 에서 checkLogin 메소드 호출하여 
																// 매개변수로 id , pw , request 넣고 수행한 결과 result 에 대입
			request.setAttribute("result", result); 			// result 형태로 값 저장
			System.out.println("[loginCheck]Result : " + result); 	// 로그인 결과 출력
//			if(result == 1) response.sendRedirect("loginOk.do");
//			else response.sendRedirect("login.do");
//			
		} catch (SQLException e) {
			System.out.println("Result 전달실패"); // 결과 실패 메세지 출력 
			e.printStackTrace(); // 오류 발생 시 메세지 출력.
		} 
//		catch (IOException e) {
//			e.printStackTrace();
//		}
	}

}
