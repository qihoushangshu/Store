package cn.itcast.service;

import java.sql.SQLException;

import cn.itcast.dao.UserDao;
import cn.itcast.domain.User;
import cn.itcast.utils.MailUtils;
import cn.itcast.utils.UUIDUtils;

/**
 * Created by Administrator on 2016/6/29.
 */
public class UserService {

	public void regist(User user) throws SQLException {

		user.setUid(UUIDUtils.getUUID());
		user.setState(0);
		String code = UUIDUtils.getUUID()+UUIDUtils.getUUID();
		user.setCode(code);
		
		UserDao userDao = new UserDao();
		userDao.save(user);
		//发送邮件
		MailUtils.sendMail(user.getEmail(), code);
		
	}

	public User findByCode(String code) throws SQLException {
		UserDao userDao = new UserDao();
		return userDao.findByCode(code);
	}

	public void update(User user) throws SQLException {
		UserDao userDao = new UserDao();
		userDao.update(user);
		
	}
}
