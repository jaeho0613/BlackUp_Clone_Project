package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import model.dao.UserDAO;
import model.dto.UserDTO;

@SuppressWarnings("serial")
@WebServlet("/modify")
public class ModifyServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=utf-8");

		ServletContext sc = this.getServletContext();

		UserDAO userDAO = (UserDAO) sc.getAttribute("userDAO");
		String userID = req.getParameter("userID");

		UserDTO user = userDAO.selectOne(userID);

		req.setAttribute("user", user); //

		RequestDispatcher rd = req.getRequestDispatcher("/jsp/form/UserModifyForm.jsp");
		rd.include(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=utf-8");

		ServletContext sc = this.getServletContext();
		HttpSession session;

		UserDAO userDAO = (UserDAO) sc.getAttribute("userDAO");
		userDAO.insert(new UserDTO().setUserID(req.getParameter("userID"))
				.setUserAddress(req.getParameter("UserAddress")).setUserPassword(req.getParameter("UserPassword"))
				.setUserPhone(req.getParameter("UserPhone")).setUserPasswordHash(req.getParameter("UserPassword"))
				.setUserRating(0).setUserName(req.getParameter("UserName")).setUserSex(req.getParameter("UserSex")));

		session = req.getSession();
		PrintWriter wr = resp.getWriter();
		wr.println("<script>");
		wr.println("alert('회원 정보 변경에 성공했습니다.');");
		wr.println("location.href = 'main'");
		wr.println("</script>");
		wr.close();
	}
}
