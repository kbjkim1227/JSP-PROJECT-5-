<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <meta charset="utf-8">

  <title>유기동물 신고</title>

  <title>유기동물 보호센터</title>

  <link rel="stylesheet" href="front/css/writeReview.css"><!-- css파일 -->
  <jsp:include page="fragment/header.jsp" flush="false"/>
  <hr>
  <div class="container">
    <div class="row">
      <form method="post" action="writeReviewOk.do" enctype="multipart/form-data" name="form" onsubmit="return check_All()">
        <table class="table" style="text-align: center; border: none; margin-top:18px;">
          <thead>
            <tr>
              <th class ="wR_main_title" colspan="2"><span style ="text-align: center; font-family:'NIXGONM-Vb'; ">신고글 작성</span></th></tr>

          </thead>
          <tbody style="border:none;">
            <tr>
            </tr>
            <tr>
         
              <td style="border:none;"><input type="text" style="width:98%; height:25px; font-size:1.1em; margin-top: 10px;" maxlength="100" id="review_text" placeholder="글 제목" onchange="check_title()" name="title" maxlength="50" /></td>

            </tr>

            <tr>

              <td style="border:none;"><textarea class="form-control" style="width:98%;height: 250px; font-size:1.1em; margin-top: 7px;" rows="50" placeholder="글 내용" onchange="check_write()" name="content" maxlength="2048" ></textarea></td>

            </tr>

          </tbody>

        </table>

       		<div class ="review_service" align="center">
       			 <div style="width:60%; display:flex;">
               	    종류 : &nbsp; <select class="menu_select" name="category">
                   <option value="dog" selected>강아지</option>
                   <option value="cat">고양이</option>
                   <option value="animal">기타 동물</option>
                   </select>
            	
       			<input type="file" class ="review_button1" value="이미지" name="img" accept="img/*" ><!-- required multiple onchange="handleFiles(this.files)" -->
       			</div>
       			<div style="width:40%;">
         			<input type="submit" class ="review_button2" value="글 올리기" action="writeReview.do"/>
       			</div>
              </div>
      </form>
    </div>
  </div>
</body>

<script>

   function check_All(){
      if(!check_titleAll()){
         alert("글 제목을 다시 작성해 주세요.");
         return false;
      }else if(!check_writeAll()){
         alert("리뷰를 다시 작성해 주세요.");
         return false;
      }else
         return true;
   }

   function check_writeAll(){//게시판 글쓰는 구간 유효성 검사.
      var write = form.content.value;
      var writeRegExp = /^[a-zA-Z가-힣ㄱ-ㅎ0-9\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"\s]{1,2000}$/; 

      if(!write.replace(/^\s+|\s$/,"")){// 글자수가 모두 공백일 경우.
         return false;
      }

      if(!writeRegExp.test(write)){
         return false;
      }else
         return true;
   }
   
   function check_titleAll(){// 글 제목 리체크.
      var title = form.title.value;
      var titleRegExp = /^[a-zA-Z가-힣ㄱ-ㅎ0-9\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"\s]{4,25}$/; 
      
      
      
      if(!title.replace(/^\s+|\s$/,"")){// 글자수가 모두 공백일 경우.
         return false;
      }
      
      if(!titleRegExp.test(title)){
         
            return false;
      }else
         return true;
      
   }
   
   function check_title(){// 타이틀 유효성 검사 구간.
      var title = form.title.value;
      var titleRegExp = /^[a-zA-Z가-힣ㄱ-ㅎ0-9\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"\s]{4,25}$/; 
      
      if(!titleRegExp.test(title)){
         alert("글 제목은 4 ~ 25글자수 로 작성하셔야 합니다.");
      }
      
   }//타이틀 유효성검사 끝.
   
   function check_write(){//게시판 글쓰는 구간 유효성 검사.
      var write = form.content.value;
      var writeRegExp = /^[a-zA-Z가-힣ㄱ-ㅎ0-9\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"\s]{1,2000}$/; 
      
      if(!writeRegExp.test(write)){
         alert("리뷰 내용을 적어주세요.");
      }
   }
   
   
</script>
<jsp:include page="fragment/footer.jsp" flush="false"/>
</html>