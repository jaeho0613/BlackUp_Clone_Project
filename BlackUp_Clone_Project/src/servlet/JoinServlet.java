package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.UserDAO;
import model.dto.UserDTO;

@SuppressWarnings("serial")
@WebServlet("/join")
public class JoinServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html; charset=utf-8");
		RequestDispatcher rd = req.getRequestDispatcher("/jsp/form/JoInForm.jsp");
		rd.include(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		try {
			ServletContext sc = req.getServletContext();
			
			
			
			UserDAO userDAO = (UserDAO) sc.getAttribute("userDAO");
			userDAO.insert(new UserDTO()
					.setUserAddress(req.getParameter("userAddress"))
					.setUserRating(0)
					.setUserName(req.getParameter("userName"))
					.setUserPassword(req.getParameter("userPassword"))
					.setUserPasswordHash(req.getParameter("userPassword"))
					.setUserID(req.getParameter("userID"))
					.setUserSex(req.getParameter("userGender"))
					.setUserPhone(req.getParameter("userPhone")));
			
			
			resp.sendRedirect("main");
			
// 재호한테 예외처리 물어보기! (주소입력!)
			
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", e);
			RequestDispatcher rd = req.getRequestDispatcher("/Error.jsp");
			rd.forward(req, resp);
		}
		
		
	}
}
