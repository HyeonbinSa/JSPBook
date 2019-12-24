package jspbook.ch04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloWorldServlet
 */
@WebServlet(description = "First Servlet", urlPatterns = { "/HelloWorldServlet" })
public class HelloWorldServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//콘텐츠 타입 선언 및 한글 설정 
		response.setContentType("text/html;charset=UTF-8");
		
		//웹 브라우저 출력을 위한 PrinterWriter 객체 확보
		PrintWriter out = response.getWriter();
		//HTML 형식으로 브라우저 출력 콘텐츠 생
		out.println("<HTML>");
		out.println("<head><title>Hello World Servlet</title></head>");
		out.println("<body><h2>Hello World Servlet : 헬로월드</h2></body>");
		out.println("현재 날짜와 시간은 : "+ new java.util.Date());
		out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
