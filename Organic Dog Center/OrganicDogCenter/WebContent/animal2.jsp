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
             <h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">������ ����</span></h3>
            <img src="front/img/event/women/women1_1.JPG" alt="" x><br>
          	 <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#����� #�̺�Ʈ #������ ����<br></span>          	   
          		 ����ģ���� ���� ������ ������ ����� ���°��� ����?<br>
          		 SNS�� ������Ʈ�� �̹����� ����� �մϴ�.<br>
           
             	  
		</div>
		<div class = "block1">
			<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">#��</span></h3>
            <img src="front/img/event/women/women1_2.JPG" alt="" ><br>
            <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#�������� #����<br></span>
          		  ����� �̹����� ������ ���� ���ڰ� ���� �ݴϴ�.<br>
		</div>
		<div class = "block1">
			<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">#��</span></h3>
            <img src="front/img/event/women/women1_3.png" alt="" ><br>
            <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#�ѵ� #�ϼ�<br></span>
                                ������ ���� ���� �Ŀ� ���ڰ� �̾� �ְ� ���ڿ� ����ģ������ �������ݴϴ�.
		</div>
        </div>      
        </div>
	
        <div id="animal_2" style="display:none;">
        <div class="info">
        <div class="block1">
            <h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">��¦ ����</span></h3>
            <img src="front/img/event/women/women2_1.PNG" alt="" >
            <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#����� #�̺�Ʈ #���ö�<br></span>
            	��Ʈ���� �޾� ���� ����ģ���� ���� �� �� �ִ� ���� ������ �������?
      			����� ���� ���ö��� �����!
      			��ģ ����ģ���� ������ ���ƿ��� ���������� �غ��� ���ö��� �����ݴϴ�.
		</div>
		<div class="block1">
			<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">#��</span></h3>
            <img src="front/img/event/women/women2_2.JPG" alt="" ><br>
            <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#��� #���� <br></span>
                            �̸� �غ��ص� �ɴٹ߰� ������ ��� �������� �ǳ��ݴϴ�
        </div>
        </div>
        </div>
        
        <div id="animal_3" style="display: none;">
        <div class="info">
        <div class="block1">
          <h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">����</span></h3>	
          <img src="front/img/event/women/women3_1.JPG" alt="" ><br>
          <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#����� #�̺�Ʈ #����<br></span> 
         	�� ����ģ�����Դ� � ������ ��︱���?
         	���ڵ��� �м� �������� �پ����� �ʱ� ������, ����Ʈ�� �� �� �ִ� �ð� �����? 
		</div>
		<div class="block1">
		<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">#��</span></h3>
          <img style="width:100%; object-fit:cover;"src="front/img/event/women/women3_2.JPG" alt="" ><br>
          <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#���<br></span> 
            	�� ����ģ������ ���� ��Ⱑ ���� ���Ѵٸ� ����� ��õ�ؿ�!<br>
        </div>
        <div class="block1">
		<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">#��</span></h3>
          <img style="width:100%; object-fit:cover;"src="front/img/event/women/women3_3.JPG" alt="" ><br>
          <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#Ŀ��Ƽ <br></span> 
            	��ҿ� ���� �Ա� ������ �ϴ� ����ģ���� ���ؼ�
             	 Ŀ��Ƽ�� ��õ�ؿ�!
        </div>
        </div>
        </div>
       </div>
       <div class = "sub_wrap1"></div>
       </div>
       
  </body>
<jsp:include page="fragment/footer.jsp" flush="false"/>
</html>
