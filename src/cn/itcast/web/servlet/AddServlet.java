package cn.itcast.web.servlet;

import cn.itcast.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Servlet implementation class AddServlet
 */
@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("1111111111   out  ");
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		String flag = (String) request.getParameter("flag");
		String name = (String) request.getParameter("name");
		if ("add".equals(flag)) {
			String sql = "insert into info(name) values(?)";
				try {
					qr.update(sql, new Object[] { name });
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}else if("search".equals(flag)){
			String sql = "select name from info where name = ?";  
	        try {
	        	String nameRet =  qr.query(sql, new ScalarHandler<String>(1), name);
//	        	Customer cus = (Customer) qr.query(sql,  
//	                    new BeanHandler(Customer.class), id);  对象用这个
				System.out.println("nameRet:"+nameRet);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 

		}else{
			String sql = "delete from info where name = ?";  
	        try {
			 int ret = qr.update(sql, name);
			 System.out.println("dlete :"+ret);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  
		}

	}

}
