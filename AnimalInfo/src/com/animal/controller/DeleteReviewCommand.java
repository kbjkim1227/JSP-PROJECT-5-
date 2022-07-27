package com.animal.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.animal.service.ReviewService;

public class DeleteReviewCommand implements Command{
	
	ReviewService reviewService = ReviewService.getInstance(); // ReplyService 정보를 싱글톤 형태로 가져옴.
	
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
			int result = 0;
			HttpSession session = request.getSession(); // Session 정보를 가져와 session 변수에 대입
		
			Long review_uid = Long.parseLong(request.getParameter("uid")); // 문자열로 받은 uid를 long 타입으로 변환하고 reply_uid에 대입
			Long member_uid = Long.parseLong(String.valueOf(session.getAttribute("session"))); // 문자열로 session 정보를 전달받고 다시 
			   																				   // long 타입으로 변환 후 member_uid 에 대입
			
			result = reviewService.deleteReview(review_uid, member_uid); // 게시글삭제 메소드에 review_uid와 member_uid를 넣고 삭제한 결과 result에 대입
			request.setAttribute("result", result); // 위에 수행한 결과 result에 저장 
	}	
}	
