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
           <li>&nbsp;<input class="button" id="animal1" type="button" value="����" onclick="
              if(document.querySelector('#animal1').value === '����'){
                  document.querySelector('#animal_1').style.display='block';
                  document.querySelector('#animal_2').style.display='none';
                  document.querySelector('#animal_3').style.display='none';
              }
            " style ="width: 200px ; height:50px; font-size:15px;" ></li>
            
          <li>&nbsp;<input class="button" id="animal2" type="button" value="���" onclick="
            if(document.querySelector('#animal2').value === '���'){
                  document.querySelector('#animal_2').style.display='block';
                document.querySelector('#animal_1').style.display='none';
                document.querySelector('#animal_3').style.display='none';
            }
            " style ="width: 200px ; height:50px; font-size:15px;"></li>
            
          <li>&nbsp;<input class="button" id="animal3" type="button" value="����" onclick="
            if(document.querySelector('#animal3').value === '����'){
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
             <h3 style="font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">��������</span></h3>
            <img src="front/img/animal/others/coco1.png" alt="" ><br>
          	 �̸�:����<br>
   			 ����:2��<br>
             �ϼ�:��<br>
             ����:�޹���
              
		</div>
		<div class = "block1">
			<h3 style="font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">��������</span></h3>
            <img src="front/img/animal/others/coco2.png" alt="" ><br>
          		   ���־��� �ǰ��մϴ�!<br>
		</div>
		<div class = "block1">
			<h3 style="font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">���� Ư¡</span></h3>
            <img src="front/img/animal/others/coco3.png" alt="" ><br>
          		   �޹��� Ư���� �ѹ� ����<br>
          		   ����� �ʾƿ�<br>
          		   ���� �� ���κ� ���� <br>
          		   �߾���� �̾߱��Ѵ�ϴ�.
		</div>
        </div>      
        </div>
	
        <div id="animal_2" style="display:none;">
        <div class="info">
        <div class="block1">
            <h3 style="font-size:1.2em" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">��������</span></h3>
            <img src="front/img/animal/others/didi1.png" alt="" ><br>
				�̸�:���<br>
				����:1��<br>
				�ϼ�:��<br>
				����:������
     			
		</div>
		<div class="block1">
			<h3 style="font-size:1.2em" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">��������</span></h3>
            <img src="front/img/animal/others/didi2.png" alt="" ><br>
                        ���ʴ��� �÷��� �������ϴ�<br>
                		������ ������ �ϸ�<br>
                		�Ǹ������ �����ϴ�
        </div>
        <div class="block1">
			<h3 style="font-size:1.2em" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">���� Ư¡</span></h3>
            <img src="front/img/animal/others/didi3.png" alt="" ><br>
                        �ڵ鸵�� ���� �� ���̿���<br>
                		��� ���� �������<br>
                		�ͼ��� �մϴ�
        </div>
        </div>
        </div>
        
        <div id="animal_3" style="display: none;">
        <div class="info">
        <div class="block1">
          <h3 style="font-size:1.2em" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">��������</span></h3>	
          <img src="front/img/animal/others/papa1.png" alt="" ><br>
         	 �̸�:����<br>
         	 ����:2��<br>
             �ϼ�:��<br>
             ����:ũ�����ǵ尳��
		</div>
		<div class="block1">
		<h3 style="font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">��������</span></h3>
          <img src="front/img/animal/others/papa2.png" alt="" ><br>
             ���־��� �ǰ��մϴ�<br>
        </div>
		<div class="block1">
		<h3 style="font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">����Ư¡</span></h3>
          <img src="front/img/animal/others/papa3.png" alt="" ><br>
         	 ���溸�� ����� ���� ������<br>
         	 ���� ���� �����մϴ�
        </div>        
        </div>
        </div>
       </div>
       <div class = "sub_wrap1"></div>
       </div>
       
  </body>
<jsp:include page="fragment/footer.jsp" flush="false"/>
</html>