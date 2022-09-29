package member;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/viewMembers")
public class ViewServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request,HttpServletResponse response)
		                                            throws ServletException, IOException {
	      request.setCharacterEncoding("utf-8");		
	      response.setContentType("text/html;charset=utf-8");
	      PrintWriter out=response.getWriter();
		List membersList = (List) request.getAttribute("membersList");
		out.print("<html><body>");
		out.print("<table border=1 style='margin='0 auto'><tr align='center' bgcolor='lightgreen'>");
		out.print("<td>아이디</td><td>비밀번호</td><td>이름</td><td>이메일</td><td>가입일</td><td >삭제</td></tr>");
		for (int i = 0; i < membersList.size(); i++) {
			MemberVO memberVO = (MemberVO) membersList.get(i);
			String id = memberVO.getId();
			String pwd = memberVO.getPwd();
			String name = memberVO.getName();
			String email = memberVO.getEmail();
			Date joinDate = memberVO.getJoinDate();
			String del = "/project08/member?command=delMember&id=" + id;
			out.print("<tr><td>" + id + "</td><td>" + pwd + "</td><td>" + name + "</td><td>" + email + "</td><td>"
					+ joinDate + "</td><td>" + "<form method='post' action='/project08/member?command=delMember&id="+id+"'><input type=submit value='삭제'></form></td></tr>");
			
		}
		out.print("</table></body></html>");
		out.print("<a href='/project08/sub04/sub04.jsp'>새 회원 등록하기</a");
	}

}