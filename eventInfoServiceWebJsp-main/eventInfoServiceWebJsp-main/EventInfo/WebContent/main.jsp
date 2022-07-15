<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<!-- <link rel="stylesheet" href="front/css/main.css"> -->
<title>유기견 보호소</title>
<jsp:include page="fragment/header.jsp" flush="false"/>
  <article>
      <pre>애완동물 분양
 하시기전에
<span style ="font-size:0.8em">신중히 한번더 생각해주세요</span>
<div><a href="#detail" class ="main_button2" style="background-color:#470C08">자세히보기</a></div>
<!-- <input class ="main_button" type = button value="자세히보기"onclick=""/> -->

</pre>
      <video src="front/video/dogcat.mp4" autoplay loop muted >video</video>

  </article>
  <div class = "m_container">
	　
  </div>
  <div class = "m_container2">
  	<div class = "s_container1">
  	<span  class = "m_title">유기견 보호센터는</span><br>
  	유기견들의 보호 상황을 알려드리고 아이들을 분양 하실수있도록 만든 곳입니다.<br>
  	</div>
  	<div class = "line">
  	</div>
  	<div class = "s_container2">
  		<img id="detail" src="front/img/main/dog.png">
  	</div>
  </div>
  
    <div class = "m_container2">
  	<div class = "s_container2">
		<img src="front/img/main/image1.png">
  	</div>
  	<div class = "line">
  	</div>
  	<div class = "s_container1">
  	<span class = "m_title">유기동물</span><br>
  	<p>상처가 남아있는 아이들입니다.</p>
  	<div class ="s_container1_1">
  		<a href="event1.do" class ="main_button1">강아지</a>
  		<a href="event2.do" class ="main_button1">고양이</a>
  		<a href="event3.do" class ="main_button1">기타 동물들</a>
  	</div>
  	</div>
  </div>
  
    <div class = "m_container2">
  	<div class = "s_container1">
       <p class="m_p1">아이들을 데려가기전에&nbsp;<span style ="color:#CD853F;">한번더</span>&nbsp;또 <span style ="color:#CD853F;">한번더&nbsp;</span>생각 해주세요</p>
  	</div>
  	<div class = "line">
  	</div>
  	<div class = "s_container2">
  		<img src="front/img/main/main_img03_1.jpg">
  	</div>
  </div>
  
</body>
<jsp:include page="fragment/footer.jsp" flush="false"/>
</html>