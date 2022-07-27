package com.animal.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.animal.domain.Pagination;
import com.animal.domain.Review;
import com.animal.service.ReviewService;

public class ReviewAnimalCommand implements Command {

	ReviewService reviewService = ReviewService.getInstance(); // 싱글톤 형태로 되어있는 ReviewService 정보를 가져옴
	
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		int page = 0;
		if(request.getParameter("page") == null) page = 1; //만약 페이지 값이 널값이면 페이지는 1로처리
		else page = Integer.parseInt(String.valueOf(request.getParameter("page"))); //아니면 페이지 값 불러오기
		
		//카테고리 이름
	    String category = "animal"; //animal 이라는 카테고리
		
		int totalListCnt = reviewService.totalListCountByCategory(category); // 카테고리별 글 수를 확인하는 메소드에 category 매개변수 대입후 
																			 // 결과값 totalListCnt 변수에 대입
		Pagination pagination = new Pagination(totalListCnt, page, 7); 		 // 게시글 작성 객체 생성 후 안에 매개변수로 totalListCnt, page , 7 대입
		int startIndex = pagination.getStartIndex(); 						 // 처음 게시글 작성한 인덱스를 얻어오는 메소드 호출 
		int endIndex = pagination.getEndIndex();							 // 마지막 게시글 작성한 인덱스를 얻어오는 메소드 호출 
		
		List<Review> reviews = reviewService.findByCategory(category, startIndex, endIndex);	// 카테고리 찾기 기능에 category , startIndex , endIndex
																								// 매개변수로 넣고 수행한 결과 List 형태로 되어있는 reviews에 대입
		
		System.out.println("전체글수: " + pagination.getTotalListCnt() + " | 현재 페이지: " + pagination.getPage() + " | 시작페이지:" +
                pagination.getStartPage() + " | 끝페이지:" + pagination.getEndPage() + "|startIndex:" + startIndex + "|endIndex:" + endIndex
                + "|preBlock:" + pagination.getPreBlock() + "|nextBlock:" + pagination.getNextBlock()+"|block:"+pagination.getBlock());//확인용
		
		request.setAttribute("reviews", reviews); //리뷰 저장
		request.setAttribute("pagination", pagination); //pagination 저장
	}

}
