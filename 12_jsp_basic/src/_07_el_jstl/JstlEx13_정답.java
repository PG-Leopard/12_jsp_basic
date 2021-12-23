package _07_el_jstl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JstlEx13_정답")
public class JstlEx13_정답 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String[] pdCdList = {"0x001" , "0x002" , "0x003" , "0x004" , "0x005" , "0x006" , "0x007"};
		
		request.setAttribute("pdCdList", pdCdList);
		RequestDispatcher dis = request.getRequestDispatcher("chapter07_el_jstl/jstlEx13_정답.jsp");
		dis.forward(request, response);
	}

}
