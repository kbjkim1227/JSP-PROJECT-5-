package com.animal.domain;

public class Reply {
	private Long reply_uid;  //댓글 uid
	private Long review_uid; //리뷰 uid
	private Long member_uid; //회원 uid
	private Long group_id;   //카테고리별  id
	private String writer; 	 //글쓴이
	private String content;	 //내용
	private String regdate;	 //작성시간
	
	protected Reply() {};//그냥 생성 불가
	
	//setter를 쓰지않기 위해 생성자로 set
	public Reply(Long reply_uid, Long review_uid, Long member_uid, Long group_id, String writer, String content, String regdate) {
		this.reply_uid = reply_uid;
		this.review_uid = review_uid;
		this.member_uid = member_uid;
		this.group_id = group_id;
		this.writer = writer;
		this.content = content;
		this.regdate = regdate;
	}
	
	public String getWriter() {
		return writer;
	}

	public Long getReply_uid() {
		return reply_uid;
	}
	public Long getReview_uid() {
		return review_uid;
	}
	public Long getMember_uid() {
		return member_uid;
	}
	public Long getGroup_id() {
		return group_id;
	}
	public String getContent() {
		return content;
	}
	public String getRegdate() {
		return regdate;
	}
	
	
}
