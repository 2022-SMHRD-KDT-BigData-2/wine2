package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.MemberDAO;
import Model.MemberVO;

@WebServlet("/MypageService")
public class MypageService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");
		
		
		HttpSession session = request.getSession(); 
		MemberVO uvo = (MemberVO)session.getAttribute("vo");
		String id= uvo.getId();
	
		String pw = request.getParameter("pw");
		String birth = request.getParameter("birth");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String favorite = request.getParameter("favorite");
		
		
		

		MemberVO vo = new MemberVO(id,pw, birth, gender, email, favorite);

		
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.update(vo);
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if( cnt >0) {
			session.setAttribute("vo",vo);
			out.println("<script>");
			out.println("alert('sucess')");
			out.print("location.href = 'index.jsp';");
			out.println("</script>");
		}else {
			
			out.println("<script>");
			out.println("alert('fail')");
			out.print("location.href = 'Mypage.jsp';");
			out.println("</script>");
			
	}
		
	}
		
		

}
