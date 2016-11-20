package cn.itcast.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import cn.itcast.domain.User;
import cn.itcast.utils.JDBCUtils;

/**
 * Created by Administrator on 2016/6/29.
 */
public class UserDao {

	QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
	public void save(User user) throws SQLException {
		
		String sql = "insert into user values(?,?,?,?,?,?,?,?,?,?)";
		Object[] param = {user.getUid(),user.getUsername(),user.getPassword(),user.getName(),user.getEmail(),user.getTelephone(),user.getBirthday(),user.getSex(),user.getState(),user.getCode()};
		qr.update(sql, param);
		
		
	}

	public User findByCode(String code) throws SQLException {
		String sql = "select * from user where code = ?";
		User user = qr.query(sql, new BeanHandler<User>(User.class),code);
		return user;
	}

	public void update(User user) throws SQLException {
		String sql = "update user set state = ? ,code = ?  where uid = ?";
		Object[] param = {user.getState(),user.getCode(),user.getUid()};
		qr.update(sql, param);
	}
}	
