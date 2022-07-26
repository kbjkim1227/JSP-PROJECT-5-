<%@page import="com.event.domain.Pagination"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.event.domain.Review"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
a:hover{
color: red;
}
</style>
<meta charset="UTF-8">
<title>유기동물 보호센터</title>
<link rel="stylesheet" href="front/css/review.css?v=3">
<jsp:include page="fragment/header.jsp" flush="false" />

<%
List<Review> reviews = null;
reviews = (List<Review>) request.getAttribute("reviews");
Pagination pagination = (Pagination) request.getAttribute("pagination");
//세션 체크
String uid = "";
if (session.getAttribute("session") != null) {
	uid = session.getAttribute("session").toString();
} else {
	uid = (String) session.getAttribute("session");
}
%>
<div class="container">
	<div class="row">
		<div class="sub_container">
			<span
				style="font-weight: bold; font-family: 'NIXGONM-Vb';">신고 센터</span>
		</div>
		<div style="width: 100%; margin-bottom: 20px; display: flex;">
			<div style="width: 25%;">
				<input class="button1" type="button"  value="전체 보기"
					onclick="location.href='review.do'">
			</div>
			<div style="width: 25%;">
				<input class="button1" type="button" value="강아지"
					onclick="location.href='reviewMen.do'">
			</div>
			<div style="width: 25%;">
				<input class="button1" type="button" value="고양이" style="background-color: #efefef; border-color: #ff7276; border-left: 2px solid #ff7276; border-right: 2px solid #ff7276; 
				color: black;" onclick="location.href='reviewWomen.do'">
			</div>
			<div style="width: 25%; margin-right: 18px;">
				<input class="button1" type="button" value="기타 동물"
					onclick="location.href='reviewParent.do'">
			</div>
		</div>

		<table
			style="font-family: 'IBMPlexSansKR-Regular'; font-weight: bold; margin-bottom: 10px;""
			class="table-striped">
			<thead>
				<tr style="height: 50px; font-size: 1.4em;">
					<th class="table_color" style="width: 10%;">카테고리</th>
					<th class="table_color" style="width: 45%; letter-spacing: 30px;">제목</th>
					<th class="table_color" style="width: 15%;">작성자</th>
					<th class="table_color" style="width: 20%;">작성일</th>
					<th class="table_color" style="width: 10%;">조회수</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (Review review : reviews) {
				%>
				<tr>
					<td>
						<%
						if (review.getCategory().equals("men"))
						%>강아지 <%
						if (review.getCategory().equals("women"))
						%>고양이
						<%
						if (review.getCategory().equals("parents"))
						%>기타 동물
					</td>
					<td class="title_cont"><a
						href="readReview.do?uid=<%=review.getReview_uid()%>&page=<%=pagination.getPage()%>"><%=review.getTitle()%></a></td>
					<td><%=review.getWriter()%></td>
					<td><%=review.getRegdate()%></td>
					<td><%=review.getView_count()%></td>
				</tr>
				<%
				}
				%>
				<!--   	 <tr>
                  <td>안녕하세요 </td>
                  <td>이범준</td>
                  <td>2020-12-03</td>
                  <td>2</td>
                  <td>7</td>
           	 </tr> -->
			</tbody>
		</table>
		<form action="writeReview.do" method="get">
			<input class="button3" type="submit" value="글쓰기">
		</form>
		<input class="sign_box" type="text" name="keyword">
		<form action="reviewKeyword.do" method="get">
			<input class="button2" type="submit" value="검색">
		</form>

		<div align="center">
			<%
			if (pagination.getTotalListCnt() != 0) {
				if (pagination.getPage() != 1) {
			%>
			<a href="reviewWomen.do?page=1">처음으로</a>
			<%
			}
			if (pagination.getPage() > pagination.getPageSize()) {
			%>
			<a href="reviewWomen.do?page=<%=pagination.getPreBlock()%>">&laquo;</a>
			<%
			}
			}
			%>
			<%
			for (int i = pagination.getStartPage(); i <= pagination.getEndPage(); i++) {
			%>
			<a href="reviewWomen.do?page=<%=i%>"><%=i%></a>
			<%
			}
			if (pagination.getTotalListCnt() != 0) {
			if (pagination.getStartPage() + pagination.getBlockSize() - 1 < pagination.getTotalPageCnt()) {
			%>
			<a href="reviewWomen.do?page=<%=pagination.getNextBlock()%>">&raquo;</a>
			<%
			}
			if (pagination.getPage() != pagination.getTotalPageCnt()) {
			%>
			<a href="reviewWomen.do?page=<%=pagination.getTotalPageCnt()%>">마지막으로</a>
			<%
			}
			}
			%>
		</div>

		<%
		if (uid != null) {
		%>
		<%
		}
		%>
	</div>
</div>

</body>
<jsp:include page="fragment/footer.jsp" flush="false" />
</html>