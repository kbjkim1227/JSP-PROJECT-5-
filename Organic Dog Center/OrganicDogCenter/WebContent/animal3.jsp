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
             <h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">��ȥ �����</span></h3>
            <img src="front/img/event/parent/parent1_1.JPG" alt="" x><br>
          	 <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#����� #�̺�Ʈ #��ȥ�����<br></span>
          	 �θ�� ��ȥ ������� �¾� �̺�Ʈ�� �غ��ϰ� �����ôٸ�<br>
   			 ���� �ɰ� �θ���� �����Ͻô� ������ ��帮�� ����?<br>
                      ���ͳݿ� �θ�� ���̶�� ġ�� �θ�Բ� �帱 ���� ���������� �Ǹ��ϴ� ��ü���� ���� ���ɴϴ�.<br>
                      �θ���� ���� �ϽǸ��� ���� ��� �ֹ��� �ؿ�!<br>  
		</div>
		<div class = "block1">
			<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">#��</span></h3>
            <img src="front/img/event/parent/parent1_2.JPG" alt="" ><br>
            <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#�θ�� #����ؿ�<br></span>
          		   �ֹ��� ���� �帮�� �θ���� �����Ͻô� ������ ��帳�ϴ�!<br>
		</div>
        </div>      
        </div>
	
        <div id="animal_2" style="display:none;">
        <div class="info">
        <div class="block1">
            <h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">��������</span></h3>
            <img src="front/img/event/parent/parent2_1.JPG" alt="" >
            <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#����� #�̺�Ʈ #��������<br></span>
				�ð��� ���� �귯���鼭 ������� �����Ͽ� ������ �Ǿ����� �θ���� ���� �ľ�ô°� ���Դϴ�...<br>
     			 �� �������� �λ��� ���� ���������ٷ� �����̶� ���� �ֵ��� ������������ �θ���� �� �߿��� ���� �Ƹ��ٿ� ������ ��Ƶ����!
		</div>
		<div class="block1">
			<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">#��</span></h3>
            <img src="front/img/event/parent/parent2_2.JPG" alt="" ><br>
            <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#ȭ����#�ູ<br></span>
                                            ���ͳݿ� ���������̶�� ġ�� �������� ��Ʃ����� ���� ���ɴϴ�.<br>
                		���� �ı���� ������ ���� ���غ��� ������ ��� ���� ������ �ٷ� ã�� ���ø� �˴ϴ�!<br>
        </div>
        </div>
        </div>
        
        <div id="animal_3" style="display: none;">
        <div class="info">
        <div class="block1">
          <h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">ȿ������</span></h3>	
          <img src="front/img/event/parent/parent3_1.JPG" alt="" ><br>
          <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#����� #�̺�Ʈ #ȿ������<br></span> 
         	 ��ҿ� �ٻڼż� ������ ������ �θ�Ե��� ���ؼ� ���ֵ� ȿ�������� �غ��ص����!<br>
         	 ���� �˻��� �ϸ� ���� ȣ�ڵ��� ���� ���� �־��<br>
                      �θ���� ���� �Ͻ� ���ҷ� ����ּ���!<br>
		</div>
		<div class="block1">
		<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">#��</span></h3>
          <img style="width:100%; object-fit:cover;"src="front/img/event/parent/parent3_2.JPG" alt="" ><br>
          <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#�ѽ� #Ǫ��<br></span> 
            	���࿡ ���� �� ���� ���� ���ִ� �����̰���!<br>
        </div>
		<div class="block1">
		<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">#��</span></h3>
          <img style="width:100%; object-fit:cover;"src="front/img/event/parent/parent3_3.JPG" alt="" ><br>
          <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#�Ѷ��#����<br></span> 
         	   �ܿ￡ �� ���� �Ѵٴ� �Ѷ�� 1100����!<br>
         	   �Ƹ��ٿ� ǳ���� �θ������ �����ּ���.
        </div>        
        </div>
        </div>
       </div>
       <div class = "sub_wrap1"></div>
       </div>
       
  </body>
<jsp:include page="fragment/footer.jsp" flush="false"/>
</html>
