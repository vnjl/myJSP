package sec01.ex02;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/login")
public class LoginSerlvet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_address = request.getParameter("user_address");
		
		out.print("<html><body>");
		if(user_id != null && user_id.length() !=0) {
			out.print("�̹� �α��� �����Դϴ�!<br><br>");
			out.print("ù��° �������� �Ѱ��� ���̵�: " + user_id + "<br>");
			out.print("ù��° �������� �Ѱ��� ���̵�: " + user_pw + "<br>");
			out.print("ù��° �������� �Ѱ��� ���̵�: " + user_address + "<br>");
			out.print("</body></html>");
		}else {
			out.print("�α��� ���� �ʾҽ��ϴ�.<br><br>");
			out.print("�ٽ� �α����ϼ���!<br>");
			out.print("<a href ='/pro09/login.html>�α��� â���� �̵��ϱ�</a>");
		}
	}
	
	@Override
	public void init() throws ServletException {
		System.out.println("init �޼��� ȣ��");
	}
	
	@Override
	public void destroy() {
		System.out.println("destroy �޼��� ȣ��");
	}
	
}
