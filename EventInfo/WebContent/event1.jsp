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
        
        <div id="event_3" style="display: none;">
        <div class="info">
        <div class="block1">
          <h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">�������</span></h3>	
          <img src="front/img/event/man/man3_1.jpg" alt="" ><br>
          <span style="text-align:left; font-weight:bold;" align="left">&nbsp;&nbsp;#����� #�̺�Ʈ #å����<br></span> 
         	 ����ģ���� Ư���� �ð��� ������ ������ ������ ���� ��������� ����?	
              	Ư���� ���� ������ ���� ��������� �����մϴ�.<br>
		</div>
		<div class="block1">
		<h3 style=""font-size:1.2em;" align="left">&nbsp;&nbsp;<span style ="border-bottom:3px solid #ff7276;">#��</span></h3>
          <img style="width:100%; object-fit:cover;"src="front/img/event/man/man3_2.jpg" alt="" ><br>
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