package _07_el_jstl;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JstlEx07")
public class JstlEx07_정답 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Random ran = new Random();
		int ranNum = ran.nextInt(3);
		String me = "";
		
		if (ranNum == 0) me = "가위";
		else if (ranNum == 1) me = "바위";
		else if (ranNum == 2) me = "보";
		
		request.setAttribute("me", me);
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter07_el_jstl/jstlEx07_정답.jsp");
		dis.forward(request, response);
	}

}