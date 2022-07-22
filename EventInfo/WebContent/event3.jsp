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
           <li>&nbsp;<input class="button" id="event1" type="button" value="코코" onclick="
              if(document.querySelector('#event1').value === '코코'){
                  document.querySelector('#event_1').style.display='block';
                  document.querySelector('#event_2').style.display='none';
                  document.querySelector('#event_3').style.display='none';
              }
            " style ="width: 200px ; height:50px; font-size:15px;" ></li>
            
          <li>&nbsp;<input class="button" id="event2" type="button" value="디디" onclick="
            if(document.querySelector('#event2').value === '디디'){
                  document.querySelector('#event_2').style.display='block';
                document.querySelector('#event_1').style.display='none';
                document.querySelector('#event_3').style.display='none';
            }
            " style ="width: 200px ; height:50px; font-size:15px;"></li>
            
          <li>&nbsp;<input class="button" id="event3" type="button" value="파파" onclick="
            if(document.querySelector('#event3').value === '파파'){
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
             <h3 style="font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">인적사항</span></h3>
            <img src="front/img/event/others/coco1.png" alt="" ><br>
          	 이름:코코<br>
   			 나이:2살<br>
             암수:♀<br>
             종류:앵무새
              
		</div>
		<div class = "block1">
			<h3 style="font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">질병유무</span></h3>
            <img src="front/img/event/others/coco2.png" alt="" ><br>
          		   아주아주 건강합니다!<br>
		</div>
		<div class = "block1">
			<h3 style="font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">아이 특징</span></h3>
            <img src="front/img/event/others/coco3.png" alt="" ><br>
          		   앵무새 특성상 한번 배운말은<br>
          		   까먹지 않아요<br>
          		   가끔 전 주인분 과의 <br>
          		   추억들을 이야기한답니다.
		</div>
        </div>      
        </div>
	
        <div id="event_2" style="display:none;">
        <div class="info">
        <div class="block1">
            <h3 style="font-size:1.2em" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">인적사항</span></h3>
            <img src="front/img/event/others/didi1.png" alt="" ><br>
				이름:디디<br>
				나이:1살<br>
				암수:♂<br>
				종류:프레디독
     			
		</div>
		<div class="block1">
			<h3 style="font-size:1.2em" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">질병유무</span></h3>
            <img src="front/img/event/others/didi2.png" alt="" ><br>
                        양쪽눈다 시력이 안좋습니다<br>
                		꾸준한 관리를 하면<br>
                		실명위기는 없습니다
        </div>
        <div class="block1">
			<h3 style="font-size:1.2em" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">아이 특징</span></h3>
            <img src="front/img/event/others/didi3.png" alt="" ><br>
                        핸들링은 조금 된 아이여서<br>
                		사람 손을 어느정도<br>
                		익숙해 합니다
        </div>
        </div>
        </div>
        
        <div id="event_3" style="display: none;">
        <div class="info">
        <div class="block1">
          <h3 style="font-size:1.2em" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">인적사항</span></h3>	
          <img src="front/img/event/others/papa1.png" alt="" ><br>
         	 이름:파파<br>
         	 나이:2살<br>
             암수:♀<br>
             종류:크레스피드개코
		</div>
		<div class="block1">
		<h3 style="font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">질병유무</span></h3>
          <img src="front/img/event/others/papa2.png" alt="" ><br>
             아주아주 건강합니다<br>
        </div>
		<div class="block1">
		<h3 style="font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">아이특징</span></h3>
          <img src="front/img/event/others/papa3.png" alt="" ><br>
         	 곤충보다 파충류 전용 젤리를<br>
         	 많이 많이 좋아합니다
        </div>        
        </div>
        </div>
       </div>
       <div class = "sub_wrap1"></div>
       </div>
       
  </body>
<jsp:include page="fragment/footer.jsp" flush="false"/>
</html>
