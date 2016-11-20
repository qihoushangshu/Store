package cn.itcast.web.servlet;

import cn.itcast.domain.User;
import cn.itcast.service.UserService;
import cn.itcast.utils.BaseServlet;
import cn.itcast.utils.DateUtil;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import java.sql.SQLException;
import java.util.Map;

/**
 * Created by Administrator on 2016/6/28.
 */
@WebServlet("/UserServlet")
public class UserServlet extends BaseServlet {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 5934934302547988001L;
	
	private Logger logger = Logger.getLogger(UserServlet.class);
	
	UserService userService = null;

	public String regist(HttpServletRequest request,
			HttpServletResponse response) {
		// 接受参数
		Map<String, String[]> map = request.getParameterMap();

		User user = new User();
		try {
			// ConvertUtils.register(new DateLocaleConverter(), Date.class);
			// 封装实体
			// BeanUtils.populate(user, map);
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			logger.info("UserServlet  username =================:"+username);
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String telephone = request.getParameter("telephone");
			String birthday = request.getParameter("birthday");
			String sex = request.getParameter("sex");
			user.setUsername(username);
			user.setPassword(password);
			user.setName(name);
			user.setEmail(email);
			user.setTelephone(telephone);
			user.setBirthday(DateUtil.getDate(birthday));
			user.setSex(sex);
			// 调用业务层，处理封装的数据
			userService = new UserService();
			userService.regist(user);
			// 页面跳转
			request.setAttribute("msg", "您已经注册成功，请去激活");
			return "/msg.jsp";
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	// 激活
	public String active(HttpServletRequest request,
			HttpServletResponse response) {
		//接收激活码
		String code = request.getParameter("code");
		//根据激活码进行查询用户
		userService = new UserService();
		try {
			User user = userService.findByCode(code);
		
			if(user == null){
				//用户不存在
				// 页面跳转
				request.setAttribute("msg", "激活失败！请重新激活");
				return "/msg.jsp";
			}else{
				//用户存在
				user.setState(1);
				user.setCode(null);
				userService.update(user);
				request.setAttribute("msg", "激活成功！请去登录");
				return "/msg.jsp";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}
}
