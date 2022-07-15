package com.event.controller;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.event.service.MemberService;

public class IdDuplicatedCommand implements Command{
	
	MemberService memberService = MemberService.getInstance();
	
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		try {
			int result = memberService.duplicated(id);
			request.setAttribute("result", result);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
