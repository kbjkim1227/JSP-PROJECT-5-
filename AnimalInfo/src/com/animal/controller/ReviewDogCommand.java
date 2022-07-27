package com.animal.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.animal.domain.Pagination;
import com.animal.domain.Review;
import com.animal.service.ReviewService;

public class ReviewDogCommand implements Command {

	ReviewService reviewService = ReviewService.getInstance(); // 싱글톤 형태로 되어있는 ReviewService 정보를 가져옴
	
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		int page = 0;
		if(request.getParameter("page") == null) page = 1; // 페이지 정보를 불러온 후 아무것도 없으면 page에 1 대입
		else page = Integer.parseInt(String.valueOf(request.getParameter("page"))); // 페이지 정보가 null이 아니면 문자열로 page 정보를 불러온 후
	 																				// 다시 int형으로 바꾼 결과값 page에 대입.
		
		//카테고리 이름
		String category = "dog";
		
		int totalListCnt = reviewService.totalListCountByCategory(category); // ReviewService에 있는 카테고리별 글 수 조회하는 메소드 호출후 
																			 //결과값 totalListCnt에 대입
		Pagination pagination = new Pagination(totalListCnt, page, 7); // 게시글 작성 객체 생성 후 안에 매개변수로 totalListCnt, page , 7 대입
		int startIndex = pagination.getStartIndex(); // 처음 게시글 작성한 인덱스를 얻어오는 메소드 호출 
		int endIndex = pagination.getEndIndex(); // 마지막 게시글 작성한 인덱스를 얻어오는 메소드 호출 
		
		List<Review> reviews = reviewService.findByCategory(category, startIndex, endIndex);
		
		System.out.println("전체글수: " + pagination.getTotalListCnt() + " | 현재 페이지: " + pagination.getPage() + " | 시작페이지:" +
                pagination.getStartPage() + " | 끝페이지:" + pagination.getEndPage() + "|startIndex:" + startIndex + "|endIndex:" + endIndex
                + "|preBlock:" + pagination.getPreBlock() + "|nextBlock:" + pagination.getNextBlock()+"|block:"+pagination.getBlock());//확인용
		
		request.setAttribute("reviews", reviews); // reviews 형태로 값 저장
		request.setAttribute("pagination", pagination); // pagination 형태로 값 저장
	}

}
