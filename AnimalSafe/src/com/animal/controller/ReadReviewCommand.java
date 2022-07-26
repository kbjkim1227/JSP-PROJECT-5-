package com.animal.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.animal.domain.Reply;
import com.animal.domain.Review;
import com.animal.service.ReplyService;
import com.animal.service.ReviewService;

public class ReadReviewCommand implements Command{

	ReviewService reviewService = ReviewService.getInstance(); 
	ReplyService replyService = ReplyService.getInstance(); 
	
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		//리뷰 uid 받기
		Long review_uid = Long.parseLong(String.valueOf(request.getParameter("uid")));
		//조회수 증가
		reviewService.updateViewCount(review_uid);
		Review review = reviewService.findByUid(review_uid);
		
		List<Reply> replys = replyService.findAll(review_uid);
		
		request.setAttribute("review", review);
		request.setAttribute("replys", replys);
	}
}
