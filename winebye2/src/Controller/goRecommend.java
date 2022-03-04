package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.WineDAO;
import Model.WineVO;


@WebServlet("/goRecommend")
public class goRecommend extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

				WineDAO dao = new WineDAO();
				List<WineVO> list = dao.selectRecommend();
				
			
				request.setAttribute("list", list);
				
			
	
				RequestDispatcher rd = request.getRequestDispatcher("recommend.jsp");
				rd.forward(request, response);
	}

}
