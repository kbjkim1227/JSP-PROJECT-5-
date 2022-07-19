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
          <li>&nbsp;<input class="button" id="event1" type="button" value="아루" onclick="
              if(document.querySelector('#event1').value === '아루'){
                  document.querySelector('#event_1').style.display='block';
                  document.querySelector('#event_2').style.display='none';
                  document.querySelector('#event_3').style.display='none';
              }
            " style ="width: 200px ; height:50px; font-size:15px;" ></li>
            
          <li>&nbsp;<input class="button" id="event2" type="button" value="바둑이" onclick="
            if(document.querySelector('#event2').value === '바둑이'){
                  document.querySelector('#event_2').style.display='block';
                document.querySelector('#event_1').style.display='none';
                document.querySelector('#event_3').style.display='none';
            }
            " style ="width: 200px ; height:50px; font-size:15px;"></li>
            
          <li>&nbsp;<input class="button" id="event3" type="button" value="똘똘이" onclick="
            if(document.querySelector('#event3').value === '똘똘이'){
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
             <h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">인적사항</span></h3>
            <img src="front/img/event/dog/aru1.jpg" alt=""><br>
          	이름: 아루(aru)<br>
          	나이: 2세 <br>
          	암수구분: 암 <br>
		</div>
		<div class = "block1">
			<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">지병유무</span></h3>
            <img src="front/img/event/dog/aru2.jpg" alt="" ><br>
           		본래 리트리버 종특상 관절염 위험이 <br>
           		있으며 발견당시 피부병이 조금 <br>
           		있었지만 현재 완치 상태 <br>
		</div>
		<div class = "block1">
			<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">개견특징</span></h3>
            <img src="front/img/event/dog/aru3.jpg" alt="" ><br>
            	항상 활기차고 더운날 나가기 싫어한다<br>
            	가끔 똥을 먹는다
                                 
		</div>
        </div>      
        </div>
	
	
	
	
        <div id="event_2" style="display:none;">
        <div class="info">
        <div class="block1">
            <h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">손편지</span></h3>
            <img src="front/img/event/man/man2_1.jpg" alt="" >
            <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#기념일 #이벤트 #책편지<br></span>
            	여자친구에게 감동을 주고 싶다면 진심을 담은 손편지를 책으로 만들어서 주는건 어떨까요?<br>
                            여자친구를 위한 정성스러운 손 편지를 기념일까지 매일 한장씩 작성합니다.<br>
                            작성한 손편지들을 모아서 책 형식으로 만들어 줍니다.<br>
		</div>
		<div class="block1">
			<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">#둘</span></h3>
            <img src="front/img/event/man/man2_2.jpg" alt="" ><br>
            <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#진심 #편집 #직접쓴편지<br></span>
                            미리 준비해둔 꽃다발과 진심이 담긴 손편지를 건네줍니다
        </div>
        </div>
        </div>
        
        <div id="event_3" style="display: none;">
        <div class="info">
        <div class="block1">
          <h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">레스토랑</span></h3>	
          <img src="front/img/event/man/man3_1.jpg" alt="" ><br>
          <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#기념일 #이벤트 #책편지<br></span> 
         	 여자친구와 특별한 시간을 보내고 싶으면 분위기 좋은 레스토랑은 어떨까요?	
              	특별한 날에 분위기 좋은 레스토랑을 예약합니다.<br>
		</div>
		<div class="block1">
		<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">#둘</span></h3>
          <img style="width:100%; object-fit:cover;"src="front/img/event/man/man3_2.jpg" alt="" ><br>
          <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#선물 #음식 #웃음<br></span> 
            	여자친구와 맛있는 음식을 함께 먹으면서 <br>
            	여자 친구가 평소에 같고 싶어 했던 선물을 줍니다.
        </div>
        </div>
        </div>
       </div>
       <div class = "sub_wrap1"></div>
       </div>
       
  </body>
<jsp:include page="fragment/footer.jsp" flush="false"/>
</html>