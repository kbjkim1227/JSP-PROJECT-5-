<%@page import="java.util.ArrayList"%>
<%@page import="com.event.domain.Pagination"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="front/css/event.css">
<jsp:include page="fragment/header.jsp" flush="false"/>    
	<div style="width:100%;height:100px;">
      <section class ="content">
        <ul class="first_icon">
          <li>&nbsp;<input class="button" id="event1" type="button" value="네로" onclick="
              if(document.querySelector('#event1').value === '네로'){
                  document.querySelector('#event_1').style.display='block';
                  document.querySelector('#event_2').style.display='none';
                  document.querySelector('#event_3').style.display='none';
              }
          " style ="width: 200px ; height:50px; font-size:15px;" ></li>
          <li>&nbsp;<input class="button" id="event2" type="button" value="나비" onclick="
            if(document.querySelector('#event2').value === '나비'){
                  document.querySelector('#event_2').style.display='block';
                document.querySelector('#event_1').style.display='none';
                document.querySelector('#event_3').style.display='none';
            }
          " style ="width: 200px ; height:50px; font-size:15px;"></li>
          <li>&nbsp;<input class="button" id="event3" type="button" value="방울" onclick="
            if(document.querySelector('#event3').value === '방울'){
                document.querySelector('#event_3').style.display='block';
                document.querySelector('#event_1').style.display='none';
                document.querySelector('#event_2').style.display='none';
            }
          " style ="width: 200px ; height:50px; font-size:15px;"></li>
        </ul>
      </section>
      </div>

		

      <div class = "wrap">
      <div class = "sub_wrap1"></div>
      <div class = "sub_wrap">
        <div id="event_1" style="display:block;">
        <div class="info">
        <div class="block1">
             <h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">인적 사항</span></h3>
            <img src="front/img/event/women/nero1.jpg" alt="" ><br>
            이름: 네로(nero)<br>
          	나이: 5세 <br>
          	암수구분: 남 <br>     	  
		</div>
		<div class = "block1">
			<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">지병유무</span></h3>
            <img src="front/img/event/women/nero2.jpg" alt="" ><br>
                기존에 슬개골 탈골 증상이 있어서 <br>
           		입양 시 고양이를 위한 매트 및 <br>
           		환경이 조성되어 있어야 함. <br>
		</div>
		<div class = "block1">
			<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">고양이특징</span></h3>
            <img src="front/img/event/women/nero3.jpg" alt="" ><br>
            	초기에 적응 기간이 있지만<br>
            	적응하면 애교도 많고 사람을<br>
            	너무나도 좋아하는 개냥이 친구입니다.<br>
            	신중하게 생각해주시고 연락 부탁드립니다.<br>
            	
		</div>
        </div>      
        </div>
	
	
	
	
	
	
	
        <div id="event_2" style="display:block;">
        <div class="info">
        <div class="block1">
             <h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">인적 사항</span></h3>
            <img src="front/img/event/women/navi1.jpg" alt="" ><br>
            이름: 나비(navi)<br>
          	나이: 2개월 <br>
          	암수구분: 남 <br>   	  
		</div>
		<div class = "block1">
			<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">지병유무</span></h3>
            <img src="front/img/event/women/navi2.jpg" alt="" ><br>
              신생아 특징상 관심과 주의가 필요하고 <br>
           	  턱쪽에 여드름이 나는것 같아  <br>
           	  청결을 유지해주어야 함. <br>
		</div>
		<div class = "block1">
			<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">고양이특징</span></h3>
            <img src="front/img/event/women/navi3.jpg" alt="" ><br>
             세상에 태어난지 얼마 안되어보이는 <br>
             고양이 입니다.<br>
             귀엽다고 분양하는것이 아닌 <br>
             가족이라 생각하고 데려가주세요.<br>
            	
		</div>
        </div>      
        </div>
        
        
        
        <div id="event_3" style="display:block;">
        <div class="info">
        <div class="block1">
             <h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">인적 사항</span></h3>
            <img src="front/img/event/women/bangul1.jpg" alt="" ><br>
            이름: 방울이(bangul)<br>
          	나이: 5개월 <br>
          	암수구분: 여 <br>   	  
		</div>
		<div class = "block1">
			<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">지병유무</span></h3>
            <img src="front/img/event/women/bangul2.jpg" alt="" ><br>
              신생아 특징상 관심과 주의가 필요하고 <br>
           	  심장사상충이 발견되어 치료하였음.  <br>
           	  병이 재발하지 않도록 관심필요. <br>
		</div>
		<div class = "block1">
			<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">고양이특징</span></h3>
            <img src="front/img/event/women/bangul3.jpg" alt="" ><br>
             기존에 심장사상충을 앓았던 <br>
             병력이 존재 합니다.<br>
             몸이 허약한 고양이여서 <br>
             분양 시 신중하게 생각해주세요.<br>
            	
		</div>
        </div>      
        </div>
        
       </div>
       
       
       
       
       
       
       <div class = "sub_wrap1"></div>
       </div>
       
  </body>
<jsp:include page="fragment/footer.jsp" flush="false"/>
</html>
