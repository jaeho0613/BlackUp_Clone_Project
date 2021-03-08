package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.ProductDAO;
import model.dto.ProductDTO;

@SuppressWarnings("serial")
@WebServlet("/main")
public class MainServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			ServletContext sc = this.getServletContext();
			
			ProductDAO productDAO = (ProductDAO) sc.getAttribute("productDAO");
			ArrayList<ProductDTO> madeProductList  = productDAO.getCategoryByProduct("made");
			ArrayList<ProductDTO> outerProductList = productDAO.getCategoryByProduct("outer");
			
//			ArrayList<ProductDTO> outerProductList  = productDAO.getCategoryByProduct("outer");
//			ArrayList<ProductDTO> pantsProductList  = productDAO.getCategoryByProduct("pants");
			
			req.setAttribute("madeList", madeProductList);
			req.setAttribute("outerList", outerProductList);

			resp.setContentType("text/html; charset=utf-8");
			RequestDispatcher rd = req.getRequestDispatcher("/MainForm.jsp");
			rd.include(req, resp);
			
		} catch (Exception e) {
			System.out.println("main servelt 오");
			e.printStackTrace();
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

}
