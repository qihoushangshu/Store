package cn.itcast.utils;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailUtils {

	/*
	 * public static void sendMail(String to, String code) { // session对象
	 * Properties props = new Properties(); // 设置环境信息 Session session =
	 * Session.getInstance(props, new Authenticator() { //
	 * 在session中设置账户信息，Transport发送邮件时会使用
	 * 
	 * @Override protected PasswordAuthentication getPasswordAuthentication() {
	 * return new PasswordAuthentication("service@qihoushangshu.com", "1234"); }
	 * });
	 * 
	 * Message message = new MimeMessage(session); // 设置发件人 try {
	 * message.setFrom(new InternetAddress("service@qihoushangshu.com")); //
	 * 设置收件人 message.addRecipient(RecipientType.TO, new InternetAddress(to)); //
	 * 设置主题 message.setSubject("来自帅哥的邮件"); // 设置内容 message.setContent(
	 * "<h1>来自帅哥的邮件，点击下列链接激活</h1><h3><a href='http://localhost:8080/Store/UserServlet?method=active&code="
	 * + code + "'>http://localhost:8080/Store/UserServlet?method=active&code="
	 * + code + "</a></h3>", "text/html;charset=UTF-8"); // Transport 对象
	 * Transport.send(message); } catch (Exception e) {
	 * System.out.println("邮件发送异常！！！！"); }
	 * 
	 * }
	 */

	public static void sendMail(String to, String code) {
		          // 第一步：创建Session
			          Properties props = new Properties();
			          //指定邮件的传输协议，smtp(Simple Mail Transfer Protocol 简单的邮件传输协议)
			          props.put("mail.transport.protocol", "smtp");
			          //指定邮件服务器
			          props.put("mail.host","smtp.163.com");
			          //指定邮件的发送人(您用来发送邮件的服务器，比如您的163\sina等邮箱)
			          props.put("mail.from", "sixd163@163.com");
			          
			          props.put("mail.smtp.auth","true");   
			          props.put("username","sixd163");   
			          props.put("password","sixd..4444"); 
//			          Session session = Session.getDefaultInstance(props);
			          Session session = Session.getDefaultInstance(props, new Authenticator(){  
			        	  protected PasswordAuthentication getPasswordAuthentication() {  
			        	  return new PasswordAuthentication("sixd163", "sixd..4444");  
			        	  }});  
			          // 开启调试模式
			          session.setDebug(true);
			          try {
			              // 第二步：获取邮件发送对象
			              Transport transport = session.getTransport();
			              // 连接邮件服务器，链接您的163、sina邮箱，用户名（不带@163.com，登录邮箱的邮箱账号，不是邮箱地址）、密码
			              transport.connect("sixd163", "sixd..4444");
			  
			              // 第三步：创建邮件消息体
			              MimeMessage message = new MimeMessage(session);
			              //邮件的主题
			              message.setSubject("来自帅哥的邮件");                               
			              //邮件的内容
			              message.setContent("<h1>来自帅哥的邮件，点击下列链接激活</h1><h3><a href='http://localhost:8080/Store/UserServlet?method=active&code="
			            			  + code + "'>http://localhost:8080/Store/UserServlet?method=active&code="
			            			  + code + "</a></h3>", "text/html;charset=utf-8");        
			             //邮件发送时间
			              message.setSentDate(new Date());                            
			  
			              // 第四步：发送邮件
			              //第一个参数：邮件的消息体
			              //第二个参数：邮件的接收人，多个接收人用逗号隔开（test1@163.com,test2@sina.com）
			              transport.sendMessage(message, InternetAddress.parse(to));
			          } catch (Exception e) {
			              e.printStackTrace();
			          }
	}

}
