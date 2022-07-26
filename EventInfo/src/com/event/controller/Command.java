package com.event.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//command 인터페이스
public interface Command {
	void excute(HttpServletRequest request, HttpServletResponse response);
}
