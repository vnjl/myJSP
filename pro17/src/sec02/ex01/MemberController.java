package sec02.ex01;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/member/*")
public class MemberController extends HttpServlet {
	MemberDAO memberDAO;

	public void init() throws ServletException {
		memberDAO = new MemberDAO();
	}	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nextPage = null;
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String action = request.getPathInfo(); //URL���� ��û��������
		System.out.println("action:" + action);
		// ���ʷ� ��û�߰ų�, action ���� /listMembers.do�� ȸ�� ����� ���
		if (action == null || action.equals("/listMembers.do")) {
			List<MemberVO> membersList = memberDAO.listMembers();
			request.setAttribute("membersList", membersList);
			//listMembers.jsp �� ������
			nextPage = "/test02/listMembers.jsp";
		} else if (action.equals("/addMember.do")) { //���۵� ȸ�� ������ ������ ���̺� ���
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			MemberVO memberVO = new MemberVO(id, pwd, name, email);
			memberDAO.addMember(memberVO);
			// ȸ�� ��� �� �ٽ�ȸ�� ����� ���
			nextPage = "/member/listMembers.do";
		// action ���� /memberForm.do �̸� ȸ�� ����â�� ȭ�鿡 ���
		} else if (action.equals("/memberForm.do")) {
			nextPage = "/test02/memberForm.jsp"; //memberForm.jsp�� ������
		} else { //�׿� �ٸ� action ���� ȸ�� ����� ���
			List<MemberVO> membersList = memberDAO.listMembers();
			request.setAttribute("membersList", membersList);
			nextPage = "/test02/listMembers.jsp";  // ȸ������� �ٽ� ȸ�� ����� ���
		}
		// nextPage�� ������ ��û������ �ٽ� ������ ��û
		RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
		dispatch.forward(request, response);	
	}		
}