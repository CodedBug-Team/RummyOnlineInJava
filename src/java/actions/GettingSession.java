/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import com.opensymphony.xwork2.ActionSupport;
import database.login.UserLogin;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.util.ServletContextAware;

/**
 *
 * @author Abhishek
 */
public class GettingSession extends ActionSupport implements ServletContextAware,
        SessionAware, ServletRequestAware, ServletResponseAware{
//    public static void main(String args[])
//    {
//    UserLogin ul=new UserLogin();
//        Map session = ul.getSession();
//        System.out.println(session);
//    
//    }

    protected ServletContext context = null;
    protected Map<String, Object> session = null;
    protected HttpServletRequest request = null;
    protected HttpServletResponse response = null;
 
    @Override
    public void setServletContext(ServletContext context) {
        this.context = context;
    }
 
    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
 
    }
 
    @Override
    public void setServletRequest(HttpServletRequest request) {
        this.request = request;
    }
 
    @Override
    public void setServletResponse(HttpServletResponse response) {
        this.response = response;
    }
 
}
