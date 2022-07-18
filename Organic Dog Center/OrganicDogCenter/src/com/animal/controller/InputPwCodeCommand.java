package com.animal.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InputPwCodeCommand implements Command{
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		String code = request.getParameter("code");
		String id = request.getParameter("id");
		
		request.setAttribute("code", code);
		request.setAttribute("id", id);
	}
}
