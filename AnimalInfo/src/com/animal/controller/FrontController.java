package com.animal.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public FrontController() {
    	super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { // Get 방식
		actionDo(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { // Post 방식
		actionDo(request, response);
	}
	
	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
		// Get , Post 방식 둘다 유연하게 쓰기위한 actionDo 메소드
		System.out.println("====FrontController===="); //actionDo호출하면 콘솔창에 출력
		System.out.println("actionDo() 호출");
		
		request.setCharacterEncoding("UTF-8"); 
			
		String uri = request.getRequestURI(); // URI(프로젝트명 + 파일경로) 정보를 가져와 uri에 대입
		String conPath = request.getContextPath(); // Project Path만 가져와 conPath에 대입
		String com = uri.substring(conPath.length()); // URI에서 conPath에 저장되어있는 Project Path 길이만큼 짤라 com에 저장
		
		String viewPage = null;  // 어떠한 페이지에 보여줄지 (View)
		Command command = null;   // 어떠한 로직을 수행할지
		
		
		System.out.println("uri: " + uri);
		System.out.println("conPath: " + conPath);
		System.out.println("com: " + com);
		System.out.println("=======================");
		
		//case "/x"; 실행하면 viewPage ="x"; 페이지 출력
		switch(com) {
		case "/main.do":
			viewPage = "main.jsp";
			break;
		case "/login.do":
			viewPage = "login.jsp";
			break;
		case "/loginOk.do":	
			command = new LoginCommand();
			command.excute(request, response);
			viewPage = "loginOk.jsp";
			break;
		case "/logout.do":
			command = new LogoutCommand();
			command.excute(request, response);
			viewPage = "logout.jsp";
			break;
		case "/findId.do":
			viewPage = "findId.jsp";
			break;
		case "/findPw.do":
			viewPage = "findPw.jsp";
			break;
		case "/sendEmailOk.do":
			command = new sendEmailCommand();
			command.excute(request, response);
			viewPage = "sendEmailOk.jsp";
			break;
		case "/inputPwCode.do":
			command = new InputPwCodeCommand();
			command.excute(request, response);
			viewPage = "inputPwCode.jsp";
			break;
		case "/inputPwCodeOk.do":
			command = new InputPwCodeOkCommand();
			command.excute(request, response);
			viewPage = "inputPwCodeOk.jsp";
			break;
		case "/inputNewPw.do":
			command = new InputNewPwCommand();
			command.excute(request, response);
			viewPage = "inputNewPw.jsp";
			break;
		case "/inputNewPwOk.do":
			command = new InputNewPwOkCommand();
			command.excute(request, response);
			viewPage = "inputNewPwOk.jsp";
			break;	
		case "/signUp.do":
			viewPage = "signUp.jsp";
			break;
		case "/signUpOk.do":
			command = new SignUpCommand();
			command.excute(request, response);
			viewPage = "signUpOk.jsp";
			break;
		case "/idDuplicated.do":
			command = new IdDuplicatedCommand();
			command.excute(request, response);
			viewPage = "idDuplicated.jsp";
			break;
		case "/review.do":
			command = new ReviewCommand();
			command.excute(request, response);
			viewPage = "review.jsp";
			break;
		case "/reviewDog.do":
			command = new ReviewDogCommand();
			command.excute(request, response);
			viewPage = "reviewDog.jsp";
			break;
		case "/reviewCat.do":
			command = new ReviewCatCommand();
			command.excute(request, response);
			viewPage = "reviewCat.jsp";
			break;
		case "/reviewAnimal.do":
			command = new ReviewAnimalCommand();
			command.excute(request, response);
			viewPage = "reviewAnimal.jsp";
			break;
		case "/reviewKeyword.do":
			command = new ReviewKeywordCommand();
			command.excute(request, response);
			viewPage = "reviewKeyword.jsp";
			break;
		case "/readReview.do":
			command = new ReadReviewCommand();
			command.excute(request, response);
			viewPage = "readReview.jsp";
			break;
		case "/replyOk.do":
			command = new ReplyCommand();
			command.excute(request, response);
			viewPage = "replyOk.jsp";
			break;
		case "/deleteReply.do":
			command = new DeleteReplyCommand();
			command.excute(request, response);
			viewPage = "deleteReply.jsp";
			break;
		case "/writeReview.do":
			viewPage = "writeReview.jsp";
			break;
		case "/writeReviewOk.do":
			command = new WriteReviewCommand();
			command.excute(request, response);
			viewPage = "writeReviewOk.jsp";
			break;
		case "/updateReview.do":
			command = new UpdateReviewCommand();
			command.excute(request, response);
			viewPage = "updateReview.jsp";
			break;
		case "/updateReviewOk.do":
			command = new UpdateReviewOkCommand();
			command.excute(request, response);
			viewPage = "updateReviewOk.jsp";
			break;
		case "/deleteReview.do":
			command = new DeleteReviewCommand();
			command.excute(request, response);
			viewPage = "deleteReview.jsp";
			break;
		case "/myPage.do":
			command = new MyPageCommand();
			command.excute(request, response);
			viewPage = "myPage.jsp";
			break;
		case "/updateMyPage.do":
			command = new UpdateMyPageCommand();
			command.excute(request, response);
			viewPage = "updateMyPage.jsp";
			break;
		case "/updateMyPageOk.do":
			command = new UpdateMyPageOkCommand();
			command.excute(request, response);
			viewPage = "updateMyPageOk.jsp";
			break;
		case "/animal1.do":
			viewPage = "animal1.jsp";
			break;
		case "/animal2.do":
			viewPage = "animal2.jsp";
			break;
		case "/animal3.do":
			viewPage = "animal3.jsp";
			break;
		}
		// response 를 위해서 
		// 위에서 결정된 viewPage 에 forward 해줌
		if(viewPage != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}
//		RequestDispatcher dispatcher = context.getRequestDispatcher("/hello");
	}
}
