package util;

import javax.naming.InitialContext;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;

import model.ProductDAO;
import model.UserDAO;


//서버 실행시 시작되는 초기화 클래스
@WebListener
public class ContextLoaderListener implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		try {
			ServletContext sc = sce.getServletContext();
			
			InitialContext initialContext = new InitialContext();
			DataSource ds = (DataSource) initialContext.lookup("java:comp/env/jdbc/blackup");
			
			ProductDAO productDAO = new ProductDAO();
			//productDAO.setDataSource(ds);
			
			UserDAO userDAO = new UserDAO();
			//userDAO.setDataSource(ds);
				
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
