<%@ page import="java.util.ArrayList"%>
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
          <li>&nbsp;<input class="button" id="event1" type="button" value="�Ʒ�" onclick="
              if(document.querySelector('#event1').value === '�Ʒ�'){
                  document.querySelector('#event_1').style.display='block';
                  document.querySelector('#event_2').style.display='none';
                  document.querySelector('#event_3').style.display='none';
              }
            " style ="width: 200px ; height:50px; font-size:15px;" ></li>
            
          <li>&nbsp;<input class="button" id="event2" type="button" value="�ٵ���" onclick="
            if(document.querySelector('#event2').value === '�ٵ���'){
                  document.querySelector('#event_2').style.display='block';
                document.querySelector('#event_1').style.display='none';
                document.querySelector('#event_3').style.display='none';
            }
            " style ="width: 200px ; height:50px; font-size:15px;"></li>
            
          <li>&nbsp;<input class="button" id="event3" type="button" value="�ʶ���" onclick="
            if(document.querySelector('#event3').value === '�ʶ���'){
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
             <h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">��������</span></h3>
            <img src="front/img/event/dog/aru1.jpg" alt=""><br>
          	�̸�: �Ʒ�(aru)<br>
          	����: 2�� <br>
          	�ϼ�����: �� <br>
		</div>
		<div class = "block1">
			<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">��������</span></h3>
            <img src="front/img/event/dog/aru2.jpg" alt="" ><br>
           		���� ��Ʈ���� ��Ư�� ������ ������ <br>
           		������ �߰ߴ�� �Ǻκ��� ���� <br>
           		�־����� ���� ��ġ ���� <br>
		</div>
		<div class = "block1">
			<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">����Ư¡</span></h3>
            <img src="front/img/event/dog/aru3.jpg" alt="" ><br>
            	�׻� Ȱ������ ��� ������ �Ⱦ��Ѵ�<br>
            	���� ���� �Դ´�
                                 
		</div>
        </div>      
        </div>
	
        <div id="event_2" style="display:none;">
        <div class="info">
        <div class="block1">
		<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">��������</span></h3>
            <img src="front/img/event/dog/badug1.png" alt="" ><br>
            	�̸�:�ٵ���<br>
                ����:1��<br>
                �ϼ�����:�� <br>
		</div>
		<div class="block1">
		<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">��������</span></h3>
            <img src="front/img/event/dog/badug2.png" alt="" ><br>
                ���� ���� ����� ������ ���� ���ϴ�<br>
                 �װſܿ� �ǰ��� �����Դϴ�
        </div>
        <div class="block1">
        <h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">����Ư¡</span></h3>
            <img src="front/img/event/dog/badug3.png" alt="" ><br>
                ������ �����ϰ� ��Һ��� ���� ��������<br>
                ���� ���� ���� �׳� ���Ѽ� �並 �մϴ�<br>
                ���� ���� �ҷ��� �־�� �մϴ�. 
        </div>
        </div>
        </div>
        
        <div id="event_3" style="display: none;">
        <div class="info">
        <div class="block1">
          <h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">��������</span></h3>	
          <img src="front/img/event/dog/ddolddol1.png" alt="" ><br>
         		�̸�:�ʶ���<br>
                ����:3��<br>
                �ϼ�����:�� <br>
		</div>
		<div class="block1">
		<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">��������</span></h3>
          <img src="front/img/event/dog/ddolddol2.png" alt="" ><br>
            	�������� �ִ� �����Դϴ�<br>
            	������ �޹߿� �������� �ֽ��ϴ�
        </div>
        <div class="block1">
		<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">����Ư¡</span></h3>
          <img src="front/img/event/dog/ddolddol3.png" alt="" ><br>
            	��Һ��� �߰����� <br>
            	����� ����մϴ�<br>
            	������ ������ �� ������Դ�<br>
            	�Ѿ��� �Ϳ��� �ֱ������Դϴ�.
        </div>
        </div>
        </div>
       </div>
       <div class = "sub_wrap1"></div>
       </div>
       
  </body>
<jsp:include page="fragment/footer.jsp" flush="false"/>
</html>