package com.animal.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.animal.domain.Member;
import com.animal.domain.Reply;
import com.animal.service.MemberService;
import com.animal.service.ReplyService;

public class ReplyCommand implements Command{
	
	MemberService memberService = MemberService.getInstance(); // 싱글톤 형태로 되어있는 MemberService 정보를 가져옴
	ReplyService replyService = ReplyService.getInstance(); // 싱글톤 형태로 되어있는 ReplyService 정보를 가져옴
	
	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession(); // Session 정보를 가져와 session 변수에 대입
		Long member_uid = Long.parseLong(String.valueOf(session.getAttribute("session"))); //회원 세션값
		Long review_uid = Long.parseLong(request.getParameter("review_uid")); //  review_uid 얻어옴.
		String content = request.getParameter("content"); // 글 내용을 얻어옴.
		Member member = memberService.findMember(member_uid); //회원찾기
		String regdate = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")); //작성날짜 시간 얻어옴
		Reply reply = new Reply(replyService.sequence(), review_uid, member_uid, replyService.sequence(), member.getId(), content, regdate);
		
		
		int result = replyService.saveReply(reply); //댓글 저장
		Long sequence = replyService.sequence(); // 저장 될 시퀀스 값 찾는 메소드 호출.
		replyService.updateGroupId(sequence, sequence); // 새로 생긴 시퀀스로인한 GroupID 업데이트 하기위해 updateGroupId에 sequence 매개변수로 메소드 호출
		int page = Integer.parseInt(request.getParameter("page"));
		request.setAttribute("result", result);  // result 형태로 값 저장.
		request.setAttribute("review_uid", review_uid); //// review_uid 형태로 값 저장.
		request.setAttribute("page", page); // page 형태로 값을 저장
	}
}
