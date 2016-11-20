package cn.itcast.utils;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

/**
 * Created by Administrator on 2016/6/26.
 */
public class JDBCUtils {
	 private static ComboPooledDataSource dataSource;  
	    static {  
	        dataSource = new ComboPooledDataSource();  
	    }  
	    // 取得链接  
	    public static Connection getMySqlConnection() throws SQLException {  
	        return dataSource.getConnection();  
	    }  
	    //  
	    public static DataSource getDataSource(){  
	        return dataSource;  
	    }  
	  
	    // 关闭链接  
	    public static void close(Connection conn) throws SQLException {  
	        if (conn != null) {  
	            try {  
	                conn.close();  
	            } catch (SQLException e) {  
	                e.printStackTrace();  
	                throw e;  
	            }  
	        }  
	    }  
	  
	    public static void close(PreparedStatement pstate) throws SQLException {  
	        if(pstate!=null){  
	            pstate.close();  
	        }  
	    }  
	    public static void close(ResultSet rs) throws SQLException {  
	        if(rs!=null){  
	            rs.close();  
	        }  
	    }  
	    public static void main(String[] args) {
//	    	QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());  
//	    	JDBCUtils.getMySqlConnection();
//	    	String sql = "select * from customer where id = ?"; 
//	    	
//	        Customer cus = (Customer) qr.query(sql,  
//	                new BeanHandler(Customer.class), "1");  
//	        return cus;    
		}
	      
}
