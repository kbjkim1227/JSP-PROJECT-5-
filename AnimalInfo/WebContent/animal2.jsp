<%@page import="java.util.ArrayList"%>
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
          <li>&nbsp;<input class="button" id="animal1" type="button" value="�׷�" onclick="
              if(document.querySelector('#animal1').value === '�׷�'){
                  document.querySelector('#animal_1').style.display='block';
                  document.querySelector('#animal_2').style.display='none';
                  document.querySelector('#animal_3').style.display='none';
              }
          " style ="width: 200px ; height:50px; font-size:15px;" ></li>
          <li>&nbsp;<input class="button" id="animal2" type="button" value="����" onclick="
            if(document.querySelector('#animal2').value === '����'){
                  document.querySelector('#animal_2').style.display='block';
                document.querySelector('#animal_1').style.display='none';
                document.querySelector('#animal_3').style.display='none';
            }
          " style ="width: 200px ; height:50px; font-size:15px;"></li>
          <li>&nbsp;<input class="button" id="animal3" type="button" value="���" onclick="
            if(document.querySelector('#animal3').value === '���'){
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
             <h3 style="font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">���� ����</span></h3>
            <img src="front/img/animal/cat/nero1.jpg" alt="" ><br>
            �̸�: �׷�(nero)<br>
          	����: 5�� <br>
          	�ϼ�:�� <br>     	  
		</div>
		<div class = "block1">
			<h3 style="font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">��������</span></h3>
            <img src="front/img/animal/cat/nero2.jpg" alt="" ><br>
                ������ ������ Ż�� ������ �־ <br>
           		�Ծ� �� �����̸� ���� ��Ʈ �� <br>
           		ȯ���� �����Ǿ� �־�� ��. <br>
		</div>
		<div class = "block1">
			<h3 style="font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">������Ư¡</span></h3>
            <img src="front/img/animal/cat/nero3.jpg" alt="" ><br>
            	�ʱ⿡ ���� �Ⱓ�� ������<br>
            	�����ϸ� �ֱ��� ���� �����<br>
            	�ʹ����� �����ϴ� ������ ģ���Դϴ�.<br>
            	�����ϰ� �������ֽð� ���� ��Ź�帳�ϴ�.<br>
            	
		</div>
        </div>      
        </div>
	
	
	
	
	
	
	
        <div id="animal_2" style="display:block;">
        <div class="info">
        <div class="block1">
             <h3 style="font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">���� ����</span></h3>
            <img src="front/img/animal/cat/navi1.jpg" alt="" ><br>
            �̸�: ����(navi)<br>
          	����: 2���� <br>
          	�ϼ�:��  <br>   	  
		</div>
		<div class = "block1">
			<h3 style="font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">��������</span></h3>
            <img src="front/img/animal/cat/navi2.jpg" alt="" ><br>
              �Ż��� Ư¡�� ���ɰ� ���ǰ� �ʿ��ϰ� <br>
           	  ���ʿ� ���帧�� ���°� ����  <br>
           	  û���� �������־�� ��. <br>
		</div>
		<div class = "block1">
			<h3 style="font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">������Ư¡</span></h3>
            <img src="front/img/animal/cat/navi3.jpg" alt="" ><br>
             ���� �¾�� �� �ȵǾ�̴� <br>
             ������ �Դϴ�.<br>
             �Ϳ��ٰ� �о��ϴ°��� �ƴ� <br>
             �����̶� �����ϰ� �������ּ���.<br>
            	
		</div>
        </div>      
        </div>
        
        
        
        <div id="animal_3" style="display:block;">
        <div class="info">
        <div class="block1">
             <h3 style="font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">���� ����</span></h3>
            <img src="front/img/animal/cat/bangul1.jpg" alt="" ><br>
            �̸�: �����(bangul)<br>
          	����: 5���� <br>
          	�ϼ�:��  <br>   	  
		</div>
		<div class = "block1">
			<h3 style="font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">��������</span></h3>
            <img src="front/img/animal/cat/bangul2.jpg" alt="" ><br>
              �Ż��� Ư¡�� ���ɰ� ���ǰ� �ʿ��ϰ� <br>
           	  ���������� �߰ߵǾ� ġ���Ͽ���.  <br>
           	  ���� ������� �ʵ��� �����ʿ�. <br>
		</div>
		<div class = "block1">
			<h3 style="font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">������Ư¡</span></h3>
            <img src="front/img/animal/cat/bangul3.jpg" alt="" ><br>
             ������ ���������� �ξҴ� <br>
             ������ ���� �մϴ�.<br>
             ���� ����� �����̿��� <br>
             �о� �� �����ϰ� �������ּ���.<br>
            	
		</div>
        </div>      
        </div>
        
       </div>
       
       
       
       
       
       
       <div class = "sub_wrap1"></div>
       </div>
       
  </body>
<jsp:include page="fragment/footer.jsp" flush="false"/>
</html>