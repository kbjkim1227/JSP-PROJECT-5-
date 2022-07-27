package com.animal.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.animal.domain.Pagination;
import com.animal.domain.Review;
import com.animal.service.ReviewService;

public class ReviewKeywordCommand implements Command{
	
	ReviewService reviewService = ReviewService.getInstance(); // 싱글톤 형태로 되어있는 ReviewService 정보를 가져옴
	
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		String keyword = request.getParameter("keyword"); // 검색할 단어 불러와 keyword에 대입.
		keyword = "%"+keyword+"%"; // 쿼리문에 실행할 불러온 keyword 저장.
		
		int page = 0;
		if(request.getParameter("page") == null) page = 1; //페이지가 널값이면 페이지 1로 취급
		else page = Integer.parseInt(String.valueOf(request.getParameter("page"))); // 문자열로 page 정보를 전달받고 다시 
		   																			// int 타입으로 변환 후 page 에 대입
		
		int totalListCnt = reviewService.totalListCountByKeyword(keyword); // 키워드 별 글 수 보여주는 메소드에 검색어 매개변수로 넣고 수행한 결과값
																		   // totalListCnt에 대입.
		Pagination pagination = new Pagination(totalListCnt, page, 7); // 게시글 작성 객체 생성 후 안에 매개변수로 totalListCnt, page , 7 대입
		int startIndex = pagination.getStartIndex(); // 처음 게시글 작성한 인덱스를 얻어오는 메소드 호출 
		int endIndex = pagination.getEndIndex(); // 마지막 게시글 작성한 인덱스를 얻어오는 메소드 호출 
		
		List<Review> reviews = reviewService.findByKeyword(keyword, startIndex, endIndex); // 리뷰키워드 검색 기능에 keyword , startIndex , endIndex
																						   // 매개변수로 넣고 수행한 결과 List 형태로 되어있는 reviews에 대입
		
		System.out.println("전체글수: " + pagination.getTotalListCnt() + " | 현재 페이지: " + pagination.getPage() + " | 시작페이지:" +
                pagination.getStartPage() + " | 끝페이지:" + pagination.getEndPage() + "|startIndex:" + startIndex + "|endIndex:" + endIndex
                + "|preBlock:" + pagination.getPreBlock() + "|nextBlock:" + pagination.getNextBlock()+"|block:"+pagination.getBlock());//확인용
		
		request.setAttribute("reviews", reviews); //리뷰값 저장
		request.setAttribute("pagination", pagination); //pagination 저장
	}
}
