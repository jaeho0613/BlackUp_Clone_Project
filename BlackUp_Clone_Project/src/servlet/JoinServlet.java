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
		
		
		ServletContext sc = req.getServletContext();
		
		
		
		UserDAO userDAO = (UserDAO) sc.getAttribute("userDAO");
		UserDTO userDTO = new UserDTO()
		.setUserAddress(req.getParameter("userAddress"))
		.setUserRating(Integer.parseInt(req.getParameter("userRating")))
		.setUserName(req.getParameter("userName"))
		.setUserPassword(req.getParameter("userPassword"))
		.setUserID(req.getParameter("userID"))
		.setUserSex(req.getParameter("userGender"))
		.setUserPhone(req.getParameter("uerPhone"));
				
		
		userDAO.insert(userDTO);
		
	}
}
