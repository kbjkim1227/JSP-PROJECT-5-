<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<link rel="stylesheet" href="front/css/header.css">  
<title>유기견 보호소</title>
<jsp:include page="fragment/header.jsp" flush="false"/>
  <div style="width:100%">
  <article>
      <pre>애완동물 분양
 하시기전에
<span style ="font-size:0.8em">신중히 한번더 생각해주세요</span>
<div><a href="#detail" class ="main_button2" style="background-color:#470C08">자세히보기</a></div>
<!-- <input class ="main_button" type = button value="자세히보기"onclick=""/> -->

</pre>
  <video style="width:2300px"src="front/video/dogcat2.mp4" autoplay loop muted >video</video>
  </article>
  </div>
  <br><br><br>
  
   <div class = "m_container2">
  	<div class = "s_container1">
      	<span  class = "m_title">우리 유기견 보호센터는</span><br>
      	동물 보호 전문가들의 봉사로 <br>
      	10마리이하의 유기동물을 보호하며.<br>
      	한마리 한마리 모든 아이들에게 <br>
      	정성을 다합니다<br>
  	</div>
  	<div class = "line">
  	</div>
  	<div class = "s_container2">
  	<img  id="detail"src="front/img/main/puppy.png"> 
  	</div>
  </div>
  
  <br><br><br><br>
  

   <article>
      <pre>
<span style ="font-size:0.8em"></span>
<a href="event1.do" class ="main_button1">강아지</a>
<!-- <input class ="main_button" type = button value="자세히보기"onclick=""/> -->
</pre>
 	 <img id="detail" src="front/img/main/dog.png">
  </article>

  
     <article>
      <pre>
<span style ="font-size:0.8em"></span>
<a href="event2.do" class ="main_button1">고양이</a>
<!-- <input class ="main_button" type = button value="자세히보기"onclick=""/> -->
</pre>
 	 <img id="detail" src="front/img/main/cat.png">
  </article>
  
     <article>
      <pre>
<span style ="font-size:0.8em"></span>
<a href="event3.do" class ="main_button1">기&nbsp;타</a>
<!-- <input class ="main_button" type = button value="자세히보기"onclick=""/> -->
</pre>
 	 <img id="detail" src="front/img/main/others.png">
  </article>
    
  
    <div class = "m_container2">
  	<div class = "s_container1">
       <p class="m_p1">아이들을 데려가기전에&nbsp;<span style ="color:#CD853F;">한번더</span>&nbsp;또 <span style ="color:#CD853F;">한번더&nbsp;</span>생각 해주세요</p>
  	</div>
  	<div class = "line">
  	</div>
  	<div class = "s_container2">
  		 <article>
  		<p style="text-align: bottom">도움을 주신분들<p>
  		&nbsp;&nbsp;&nbsp;<a>a펫샾</a><br><br>
  		&nbsp;&nbsp;&nbsp;<a>b펫샾</a><br><br>
  		&nbsp;&nbsp;&nbsp;<a>c펫샾</a><br><br>
  		&nbsp;&nbsp;&nbsp;<a>d펫샾</a><br><br>
  		</article>
  	</div>
  </div>
  
</body>
<jsp:include page="fragment/footer.jsp" flush="false"/>
</html>