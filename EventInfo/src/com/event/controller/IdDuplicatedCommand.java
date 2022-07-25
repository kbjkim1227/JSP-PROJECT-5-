package com.event.controller;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.event.service.MemberService;

public class IdDuplicatedCommand implements Command{
	
	MemberService memberService = MemberService.getInstance(); // MemberService 정보를 싱글톤 형태로 가져옴.
	
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id"); // 웹페이지에서 입력한 id를 얻어옴.
		try {
			int result = memberService.duplicated(id); // memberRepository에서 sql문으로 중복 확인 후 memberService에 있는 
													   // duplicated 메소드 수행하여 중복 결과 확인 후 result 에 대입. 
			
			request.setAttribute("result", result); // result 형태로 jsp에 보낼 result 저장.
		} catch (SQLException e) {
			e.printStackTrace(); // 오류 발생 시 메세지 출력.
		}
	}
}
