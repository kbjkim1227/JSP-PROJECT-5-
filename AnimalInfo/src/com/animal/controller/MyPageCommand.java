package com.animal.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.animal.domain.Member;
import com.animal.domain.Pagination;
import com.animal.domain.Review;
import com.animal.service.MemberService;
import com.animal.service.ReviewService;

public class MyPageCommand implements Command{
	
	MemberService memberService = MemberService.getInstance(); // MemberService 정보를 싱글톤 형태로 가져옴.
	ReviewService reviewService = ReviewService.getInstance(); // ReviewService 정보를 싱글톤 형태로 가져옴.
	
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession(); // Session 정보를 불러와 session에 대입
		//회원 세션값
		Long member_uid = Long.parseLong(String.valueOf(session.getAttribute("session"))); // 문자열로 session 정보를 전달받고 다시 
		   																				   // long 타입으로 변환 후 member_uid 에 대입
		//회원찾기
		Member member = memberService.findMember(member_uid); // MemberService에 findMember 메소드 수행 후 나온 결과값 member에 대입
		
		int page = 0;
		if(request.getParameter("page") == null) page = 1; // 페이지 정보를 불러온 후 아무것도 없으면 page에 1 대입
		else page = Integer.parseInt(String.valueOf(request.getParameter("page"))); // 페이지 정보가 null이 아니면 문자열로 page 정보를 불러온 후
																					// 다시 int형으로 바꾼 결과값 page에 대입.
		
		//페이징
		int totalListCnt = reviewService.totalListCountByMember_uid(member_uid); // ReviewService 에서 내가 쓴 글 수를 생성하는 메소드에
																				 // member_uid 매개변수로 넣고 수행한 결과 totalListCnt에 저장
		Pagination pagination = new Pagination(totalListCnt, page, 5);			 // 게시글 작성 객체 생성 후 안에 매개변수로 totalListCnt, page , 5 대입
		int startIndex = pagination.getStartIndex();							 // 처음 게시글 작성한 인덱스를 얻어오는 메소드 호출 
		int endIndex = pagination.getEndIndex();								 // 마지막 게시글 작성한 인덱스를 얻어오는 메소드 호출 
		
		List<Review> reviews = reviewService.findByMemberUid(member_uid, startIndex, endIndex); // 내가 쓴 글 보기 기능에 member_uid , startIndex , endIndex
																								// 매개변수로 넣고 수행한 결과 List 형태로 되어있는 reviews에 대입
																								
		
		System.out.println("전체글수: " + pagination.getTotalListCnt() + " | 현재 페이지: " + pagination.getPage() + " | 시작페이지:" +
                pagination.getStartPage() + " | 끝페이지:" + pagination.getEndPage() + "|startIndex:" + startIndex + "|endIndex:" + endIndex
                + "|preBlock:" + pagination.getPreBlock() + "|nextBlock:" + pagination.getNextBlock()+"|block:"+pagination.getBlock());//확인용
		
		request.setAttribute("reviews", reviews); // reviews 형태로 저장
		request.setAttribute("pagination", pagination); // pagination 형태로 저장
		request.setAttribute("member", member); // member 형태로 저장
	}
	
	
}
