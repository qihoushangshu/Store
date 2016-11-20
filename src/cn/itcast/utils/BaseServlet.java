package cn.itcast.utils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;

/**
 * Created by Administrator on 2016/6/28.
 */
public class BaseServlet extends HttpServlet{
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.service(req, resp);
        //处理post请求的乱码
        req.setCharacterEncoding("UTF-8");
        //接收参数
        String methodName = req.getParameter("method");
        //反射获得类的字节码
        Class clazz = this.getClass();
        //获得正在执行类的指定名称方法
        try {
            Method method = clazz.getMethod(methodName,HttpServletRequest.class,HttpServletResponse.class);
            //调用方法
            String path = (String) method.invoke(this,req,resp);

            if(path != null){
                req.getRequestDispatcher(path).forward(req,resp);
            }
        }catch (Exception e) {
            throw new RuntimeException("method 错误！！！！");
        }

    }

}
