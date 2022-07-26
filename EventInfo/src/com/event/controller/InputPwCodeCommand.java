package com.event.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InputPwCodeCommand implements Command{
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		String code = request.getParameter("code"); // 비밀번호 변경 메일로 수신받은 코드를 웹페이지에서 입력 후 값을 가져옴.
		String id = request.getParameter("id"); // 웹페이지에서 입력한 id 정보 가져옴.
		
		request.setAttribute("code", code); // code 형태로 값 저장
		request.setAttribute("id", id); // id 형태로 값 저장
	}
}
