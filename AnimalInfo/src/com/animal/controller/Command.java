package com.animal.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//command 패턴을 사용하여 기능들을 호출하기 위한 인터페이스
public interface Command {
	void excute(HttpServletRequest request, HttpServletResponse response);
}
