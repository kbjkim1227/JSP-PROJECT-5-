package com.animal.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InputNewPwCommand implements Command{
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) { 
		String id = request.getParameter("id"); // 비밀번호 변경 할 id 입력받아서
		
		request.setAttribute("id", id); // id 형태로 jsp에 보낼 id 저장.
	}
	
}
