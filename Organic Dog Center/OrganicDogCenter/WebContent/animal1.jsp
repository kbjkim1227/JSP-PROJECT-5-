<%@page import="java.util.ArrayList"%>
<%@page import="com.animal.domain.Pagination"%>
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
          <li><i class="fas fa-gift">&nbsp;<input class="button" id="animal1" type="button" value="animal1" onclick="
              if(document.querySelector('#animal1').value === 'animal1'){
                  document.querySelector('#animal_1').style.display='block';
                  document.querySelector('#animal_2').style.display='none';
                  document.querySelector('#animal_3').style.display='none';
              }
            "></i></li>
          <li><i class="fas fa-gift">&nbsp;<input class="button" id="animal2" type="button" value="animal2" onclick="
            if(document.querySelector('#animal2').value === 'animal2'){
                  document.querySelector('#animal_2').style.display='block';
                document.querySelector('#animal_1').style.display='none';
                document.querySelector('#animal_3').style.display='none';
            }
            "></i></li>
          <li><i class="fas fa-gift">&nbsp;<input class="button" id="animal3" type="button" value="animal3" onclick="
            if(document.querySelector('#animal3').value === 'animal3'){
                document.querySelector('#animal_3').style.display='block';
                document.querySelector('#animal_1').style.display='none';
                document.querySelector('#animal_2').style.display='none';
            }
            "></i></li>
        </ul>

      </section>
      </div>

		
      <div class = "wrap">
      <div class = "sub_wrap1"></div>
      <div class = "sub_wrap">
        <div id="animal_1" style="display:block;">
        <div class="info">
        <div class="block1">
             <h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">호텔 이벤트</span></h3>
            <img src="front/img/event/man/man1_1.jpg" alt="" x><br>
          	 <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#기념일 #이벤트 #야경<br></span>
          	   
          	 여자친구와 기념일을 맞아 특별한 날을 선물해 드리고 싶으시다면 야경이 아름다운 호텔에서
          	  꽃과 함께 스테이크를 해주는것은 어때요?<br>
              	  야경과 분위기가 좋은 호텔을 예약합니다.<br>
             	  한강 쪽에 야경이 좋은 호텔이 많으니 참고하세요!<br>
           
             	  
		</div>
		<div class = "block1">
			<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">#둘</span></h3>
            <img src="front/img/event/man/man1_2.jpg" alt="" ><br>
            <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#꽃 #손편지<br></span>
          		   미리 준비해둔 꽃다발과 진심이 담긴 손편지를 건네줍니다<br>
		</div>
		<div class = "block1">
			<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">#셋</span></h3>
            <img src="front/img/event/man/man1_3.jpg" alt="" ><br>
            <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#스테이크 #행복 #>_<<br></span>
                                 마지막으로 여자친구와 직접 요리한 맛있는 스테이크를 먹으면서 행복한 시간을 보냅니다 
		</div>
        </div>      
        </div>
	
        <div id="animal_2" style="display:none;">
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
        
        <div id="animal_3" style="display: none;">
        <div class="info">
        <div class="block1">
          <h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">레스토랑</span></h3>	
          <img src="front/img/animal/man/man3_1.jpg" alt="" ><br>
          <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#기념일 #이벤트 #책편지<br></span> 
         	 여자친구와 특별한 시간을 보내고 싶으면 분위기 좋은 레스토랑은 어떨까요?	
              	특별한 날에 분위기 좋은 레스토랑을 예약합니다.<br>
		</div>
		<div class="block1">
		<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">#둘</span></h3>
          <img style="width:100%; object-fit:cover;"src="front/img/animal/man/man3_2.jpg" alt="" ><br>
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
