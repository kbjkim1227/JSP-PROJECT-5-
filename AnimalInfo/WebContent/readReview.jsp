<%@page import="java.util.List"%>
<%@page import="com.animal.domain.Reply"%>
<%@page import="com.animal.domain.Review"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>

</style>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="front/css/readReview.css?v=3">
<title>유기동물 보호센터</title>
<jsp:include page="fragment/header.jsp" flush="false"/>
<%
	//Review 객체 받기
	Review review = (Review)request.getAttribute("review");
	//Reply 받기
	List<Reply> replys = (List<Reply>)request.getAttribute("replys");

	//전 페이징 페이지 수
	int nowPage = Integer.parseInt(request.getParameter("page"));
	//세션 체크
	Long uid = 0L;
	if(session.getAttribute("session") != null){
		uid = Long.parseLong(session.getAttribute("session").toString());
	}
	String review_uid = request.getParameter("uid");
	
%> 

<div class="wrap" align="center">
  <div class="table_div" align="center">
    
  	<table style ="width:100%; ">
  		<tbody>
  		<tr class ="review_title">
  			<td class ="td1" colspan="2" style="border-right: 3px solid #eeeeee;">
  				<span class ="title1" style="font-weight: bold; width: 80%; text-align: left;" ><%=review.getTitle()%></span>
  				<span class ="title2" style="width: 5%; " ><%=review.getWriter() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><%=review.getRegdate() %></span>
  				<span class ="title3" style="float: center; margin-left: 10px; text-align: right; width: 5%;">  조회수: <%=review.getView_count() %></td>
		</tr>
  			</td>
  		</tr>
  		<tr align ="center" style="">

  			 <td style="width:100%; height:auto;" id="img_table"><img src="upload/<%=review.getImg()%>" onerror="this.style.display='none'" alt=" "></td>

  		</tr>
  		<tr>
  			<td class ="td2"><%=review.getContent() %></td>
  		</tr>
		<tr align="right">
  			<td class ="td3" >&nbsp;&nbsp;</td>
		</tr>
  		<%--<%
  			for(Object img:img){
  		--%>

  		<%-- <%
  			}
  		--%>
  		</tbody>
  	</table>

	<%for(Reply reply : replys){%>	
	<div class="reply" >
		<span class="reply_text" style="width:10%; ">[<%=reply.getWriter() %>]</span> 
		<span class="reply_text" style="width: 50%; text-align: left; "><%=reply.getContent()%></span>    
		<span class="reply_text" style="width:35%; font-size: 1em; text-align: right; margin-right: 20px;">[<%=reply.getRegdate() %>]</span>

		<%if(uid == reply.getMember_uid()) {%>
		<a class="button_del" href="deleteReply.do?uid=<%=review_uid %>&page=<%=nowPage %>&reply_uid=<%=reply.getReply_uid()%>">삭제</a><br>
	</div>
		<%} %>
	<%} %> 
	<%if(session.getAttribute("session") != null) {%>
	<form action="replyOk.do" method="post" style="width: 100%; " >
		<textarea rows="5" cols="150" placeholder="댓글을 남겨주세요" name="content" style="resize: none; margin:auto; width: 90%; position: relative; left: 0; "></textarea>
		<input type="hidden" name="review_uid" value="<%=review_uid %>">
		<input type="hidden" name="page" value="<%=nowPage%>">
		<input type="submit" class="button1" value="작성" style=" float: right; position: relative; margin-right: 30px; width:5%; height: 80px; margin-top: 10px; font-size: 1.2em;">
	</form>
	<%} %>
	<div class="inputs_rel">
		<div class="inputs" style="width:100%;height:35px; margin-bottom: 20px;">
		  <input class ="button1" type="button" style="margin-left: 600px; margin-top: 20px; "  value="목록" onclick="location.replace('review.do?page=<%=nowPage%>')">
		<!-- 글의 회원uid값이랑 세션값이랑 같은지 확인 -->
		<%if(uid == review.getMember_uid()) {%>
		  	<input class = "button1" type="button" value="수정"  style="left: 500px;  margin-top: -40px; " onclick="location.href='updateReview.do?uid=<%=review_uid%>'">
		  		<input class = "button1" type="button" value="삭제"  style="left: 400px;  margin-top: -40px; " onclick="deleteBtn()">
		</div>
		<%} %>
	</div>
  </div>
</div>
</body>
<script>
	function deleteBtn(){
		 if(confirm("정말 삭제하시겠습니까??") == true){    //확인
			 location.href='deleteReview.do?uid=<%=review_uid%>&page=<%=nowPage%>';
			}else{   //취소
			    return;
		}
	}
</script>
<jsp:include page="fragment/footer.jsp" flush="false" />
</html>