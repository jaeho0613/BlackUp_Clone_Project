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
@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 로그인 하는 뷰로 이동
		resp.setContentType("text/html; charset=utf-8");
		RequestDispatcher rd = req.getRequestDispatcher("/jsp/form/LogInForm.jsp");
		rd.include(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// DataSource를 가져오기 위해 ServletContext 변수 생성
		ServletContext sc = req.getServletContext();
        
		// req.getAttribute로 사용자의 입력값 받아오기.
		// UserDAO를 이용하여 로그인 검사
		UserDAO userDAO = (UserDAO) sc.getAttribute("userDAO");

		UserDTO userDTO = new UserDTO().setUserID(req.getParameter("userID"))
				.setUserPassword(req.getParameter("userPassword"));

	
		int result = userDAO.login(req.getParameter("userID"), req.getParameter("userPassword"));

		if (result == 1) { // 로그인 성공 시
			System.out.println("로그인이 성공하였습니다.");
			resp.sendRedirect("main");
			
		} else if (result == 0) { // 비밀번호가 틀렸을 경우
			System.out.println("비밀번호가 틀렸습니다.");
			resp.sendRedirect("login");
		} else if (result == -1) { // 아이디가 존재하지 않은 경우
			System.out.println("존재하지 않은 아이디입니다.");
			resp.sendRedirect("login");
		} else if (result == -2) { // DB 오류
			System.out.println("데이터베이스 오류가 발생했습니다.");
			resp.sendRedirect("login");
		} else {
			System.out.println("오류.");
			resp.sendRedirect("login");
		}


	}
}
