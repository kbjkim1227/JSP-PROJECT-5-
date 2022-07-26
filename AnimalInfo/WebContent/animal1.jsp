<%@ page import="java.util.ArrayList"%>
<%@page import="com.animal.domain.Pagination"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="front/css/animal.css">
<jsp:include page="fragment/header.jsp" flush="false"/>    
	<div style="width:100%;height:100px;">
      <section class ="content">
        <ul class="first_icon">
          <li>&nbsp;<input class="button" id="animal1" type="button" value="아루" onclick="
              if(document.querySelector('#animal1').value === '아루'){
                  document.querySelector('#animal_1').style.display='block';
                  document.querySelector('#animal_2').style.display='none';
                  document.querySelector('#animal_3').style.display='none';
              }
            " style ="width: 200px ; height:50px; font-size:15px;" ></li>
            
          <li>&nbsp;<input class="button" id="animal2" type="button" value="바둑이" onclick="
            if(document.querySelector('#animal2').value === '바둑이'){
                  document.querySelector('#animal_2').style.display='block';
                document.querySelector('#animal_1').style.display='none';
                document.querySelector('#animal_3').style.display='none';
            }
            " style ="width: 200px ; height:50px; font-size:15px;"></li>
            
          <li>&nbsp;<input class="button" id="animal3" type="button" value="똘똘이" onclick="
            if(document.querySelector('#animal3').value === '똘똘이'){
                document.querySelector('#animal_3').style.display='block';
                document.querySelector('#animal_1').style.display='none';
                document.querySelector('#animal_2').style.display='none';
            }
            " style ="width: 200px ; height:50px; font-size:15px;"></li>
        </ul>
      </section>
      </div>

<div class = "wrap">
      <div class = "sub_wrap1"></div>
      <div class = "sub_wrap">
        <div id="animal_1" style="display:block;">
        <div class="info">
        <div class="block1">
             <h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">인적사항</span></h3>
            <img src="front/img/animal/dog/aru1.jpg" alt=""><br>
          	이름: 아루(aru)<br>
          	나이: 2세 <br>
          	암수: ♂ <br>
		</div>
		<div class = "block1">
			<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">지병유무</span></h3>
            <img src="front/img/animal/dog/aru2.jpg" alt="" ><br>
           		본래 리트리버 종특상 관절염 위험이 <br>
           		있으며 발견당시 피부병이 조금 <br>
           		있었지만 현재 완치 상태 <br>
		</div>
		<div class = "block1">
			<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">개견특징</span></h3>
            <img src="front/img/animal/dog/aru3.jpg" alt="" ><br>
            	항상 활기차고 더운날 나가기 싫어한다<br>
            	가끔 똥을 먹는다
                                 
		</div>
        </div>      
        </div>
	
        <div id="animal_2" style="display:none;">
        <div class="info">
        <div class="block1">
		<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">인적사항</span></h3>
            <img src="front/img/animal/dog/badug1.png" alt="" ><br>
            	이름:바둑이<br>
                나이:1세<br>
                암수:♀ <br>
		</div>
		<div class="block1">
		<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">지병유무</span></h3>
            <img src="front/img/animal/dog/badug2.png" alt="" ><br>
                아직 많이 어려서 눈꼽이 자주 낍니다<br>
                 그거외엔 건강한 아이입니다
        </div>
        <div class="block1">
        <h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">개견특징</span></h3>
            <img src="front/img/animal/dog/badug3.png" alt="" ><br>
                입질을 많이하고 대소변을 아직 못가려요<br>
                잠이 많고 밥을 그냥 삼켜서 토를 합니다<br>
                밥을 물에 불려서 주어야 합니다. 
        </div>
        </div>
        </div>
        
        <div id="animal_3" style="display: none;">
        <div class="info">
        <div class="block1">
          <h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">인적사항</span></h3>	
          <img src="front/img/animal/dog/ddolddol1.png" alt="" ><br>
         		이름:똘똘이<br>
                나이:3세<br>
                암수구분:♀ <br>
		</div>
		<div class="block1">
		<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">지병유무</span></h3>
          <img src="front/img/animal/dog/ddolddol2.png" alt="" ><br>
            	우을증이 있는 아이입니다<br>
            	오른쪽 뒷발에 관절염이 있습니다
        </div>
        <div class="block1">
		<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">개견특징</span></h3>
          <img src="front/img/animal/dog/ddolddol3.png" alt="" ><br>
            	대소변을 잘가리며 <br>
            	사람을 경계합니다<br>
            	하지만 마음을 준 사람에게는<br>
            	한없이 귀여운 애교쟁이입니다.
        </div>
        </div>
        </div>
       </div>
       <div class = "sub_wrap1"></div>
       </div>
       
  </body>
<jsp:include page="fragment/footer.jsp" flush="false"/>
</html>