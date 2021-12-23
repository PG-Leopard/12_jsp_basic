package _08_servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

	/* 
	
	# 서블릿(Servlet)
	
	- 서블릿이란 자바를 사용하여 웹을 만들기 위해 필요한 기술이름이다.
	
	- 클라이언트의 요청을 처리하고 그 결과를 반환하는 자바 웹 프로그래밍 기술이다.
	
	- M(model) V(view) C(controller) 패턴에서 Controller로 이용된다.
	
	- HTTP 프로토콜 서비스를 지원하는 javax.servlet.http.HttpServlet 클래스를 상속받아서 구현되어진다.
	
	- Java Server(WAS)가 JSP 코드를 읽어들여 서블릿 소스 코드로 변환하여 컴파일한다.		
		JSP 파일 > Servlet 파일 > 클래스 파일 > 컴파일
	
	- 서블릿(Servlet)은 웹 브라우저에서 request가 있는 경우 애플리케이션 서버(WAS)가 서블릿 클래스의 인스턴스를 생성한다.
		매번 리퀘스트 할 때마다 인스턴스를 생성하는 것은 서버에 부하가 걸리기 때문에, 
		처음 생성된 인스턴스를 request에 대한 response 뒤에도 파기하지 않고 클라이언트의 다음 request에서도 재사용하며 
		서버를 종료하는 등의 경우 서버에서 인스턴스를 파기한다.	
	
	*/

@WebServlet("/Join") // 클라이언트가 jsp 페이지가 아닌 해당 url 경로로 웹사이트를 response 한다.
public class Join extends HttpServlet { // Http 통신이 가능한 HttpServlet 클래스를 상속받아서 구현한다.
	private static final long serialVersionUID = 1L; // Servlet 생성시에 기본값으로 생성된다. 서블릿의 내부식별자 역할을 한다.
       
	// get형식으로 url 요청이 들어왔을 때 수행할 메서드
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 아래의 getRequestDispatcher(경로)에 명시된 jsp파일로 포워딩(보내기?) 한다
		RequestDispatcher dis = request.getRequestDispatcher("chapter08_servlet/01_join.jsp"); // 경로는 webContent 하위경로부터 작성한다.
		dis.forward(request, response);
	}
	
	// post형식으로 url 요청이 들어왔을 때 수행할 메서드
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String[] hobbies = request.getParameterValues("hobby");
		String hobby = "";
		for (int i = 0; i < hobbies.length; i++) {
			hobby += hobbies[i] + " ";
		}
		// request.setAttribute("속성명", 데이터); view(jsp)로 데이터를 전송한다.
		request.setAttribute("id", id);
		request.setAttribute("pw", pw);
		request.setAttribute("name", name);
		request.setAttribute("email", email);
		request.setAttribute("hobby", hobby);
		RequestDispatcher dis = request.getRequestDispatcher("chapter08_servlet/02_joinAction.jsp");
		dis.forward(request, response);
	}

}
