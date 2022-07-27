package com.animal.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.animal.domain.Reply;
import com.animal.domain.Review;
import com.animal.service.ReplyService;
import com.animal.service.ReviewService;

public class ReadReviewCommand implements Command{
	//리뷰 서비스와 리블라이서비스 받기
	ReviewService reviewService = ReviewService.getInstance(); // 싱글톤 형태로 되어있는 ReviewService 정보를 가져옴
	ReplyService replyService = ReplyService.getInstance(); // 싱글톤 형태로 되어있는 ReplyService 정보를 가져옴
	//오버라이드 객체 생성
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		//리뷰 uid 받기
		Long review_uid = Long.parseLong(String.valueOf(request.getParameter("uid")));
		//조회수 증가
		reviewService.updateViewCount(review_uid);
		Review review = reviewService.findByUid(review_uid);//uid review 불러옴(찾기)
		
		List<Reply> replys = replyService.findAll(review_uid); 
		
		request.setAttribute("review", review);  // review 형태로 값 저장.
		request.setAttribute("replys", replys);  // replys 형태로 값 저장.
	}
}
