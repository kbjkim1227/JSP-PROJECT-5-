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
             <h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">ȣ�� �̺�Ʈ</span></h3>
            <img src="front/img/event/man/man1_1.jpg" alt="" x><br>
          	 <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#����� #�̺�Ʈ #�߰�<br></span>
          	   
          	 ����ģ���� ������� �¾� Ư���� ���� ������ �帮�� �����ôٸ� �߰��� �Ƹ��ٿ� ȣ�ڿ���
          	  �ɰ� �Բ� ������ũ�� ���ִ°��� ���?<br>
              	  �߰�� �����Ⱑ ���� ȣ���� �����մϴ�.<br>
             	  �Ѱ� �ʿ� �߰��� ���� ȣ���� ������ �����ϼ���!<br>
           
             	  
		</div>
		<div class = "block1">
			<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">#��</span></h3>
            <img src="front/img/event/man/man1_2.jpg" alt="" ><br>
            <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#�� #������<br></span>
          		   �̸� �غ��ص� �ɴٹ߰� ������ ��� �������� �ǳ��ݴϴ�<br>
		</div>
		<div class = "block1">
			<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">#��</span></h3>
            <img src="front/img/event/man/man1_3.jpg" alt="" ><br>
            <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#������ũ #�ູ #>_<<br></span>
                                 ���������� ����ģ���� ���� �丮�� ���ִ� ������ũ�� �����鼭 �ູ�� �ð��� �����ϴ� 
		</div>
        </div>      
        </div>
	
        <div id="animal_2" style="display:none;">
        <div class="info">
        <div class="block1">
            <h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">������</span></h3>
            <img src="front/img/event/man/man2_1.jpg" alt="" >
            <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#����� #�̺�Ʈ #å����<br></span>
            	����ģ������ ������ �ְ� �ʹٸ� ������ ���� �������� å���� ���� �ִ°� ����?<br>
                            ����ģ���� ���� ���������� �� ������ ����ϱ��� ���� ���徿 �ۼ��մϴ�.<br>
                            �ۼ��� ���������� ��Ƽ� å �������� ����� �ݴϴ�.<br>
		</div>
		<div class="block1">
			<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">#��</span></h3>
            <img src="front/img/event/man/man2_2.jpg" alt="" ><br>
            <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#���� #���� #����������<br></span>
                            �̸� �غ��ص� �ɴٹ߰� ������ ��� �������� �ǳ��ݴϴ�
        </div>
        </div>
        </div>
        
        <div id="animal_3" style="display: none;">
        <div class="info">
        <div class="block1">
          <h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">�������</span></h3>	
          <img src="front/img/animal/man/man3_1.jpg" alt="" ><br>
          <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#����� #�̺�Ʈ #å����<br></span> 
         	 ����ģ���� Ư���� �ð��� ������ ������ ������ ���� ��������� ����?	
              	Ư���� ���� ������ ���� ��������� �����մϴ�.<br>
		</div>
		<div class="block1">
		<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">#��</span></h3>
          <img style="width:100%; object-fit:cover;"src="front/img/animal/man/man3_2.jpg" alt="" ><br>
          <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#���� #���� #����<br></span> 
            	����ģ���� ���ִ� ������ �Բ� �����鼭 <br>
            	���� ģ���� ��ҿ� ���� �;� �ߴ� ������ �ݴϴ�.
        </div>
        </div>
        </div>
       </div>
       <div class = "sub_wrap1"></div>
       </div>
       
  </body>
<jsp:include page="fragment/footer.jsp" flush="false"/>
</html>
