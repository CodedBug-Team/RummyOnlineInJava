/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actions.session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
/**
 *
 * @author Abhishek
 */
public class SessionCheckInterceptor implements Interceptor{

    private static final long serialVersionUID = 1L;
    
     @Override
 public void destroy() {               
 System.out.println("Destroying Interceptor");
 }

 @Override
 public void init() {               
 System.out.println("Initialising Interceptor");
     }
 
    @Override
    public String intercept(ActionInvocation invocation) throws Exception {
        HttpServletRequest request = ServletActionContext.getRequest();
HttpSession session = request.getSession(true);
// Checking whether the user Object that had set at login time is null or not

if (session.getAttribute("logined") == null) {
return "invalidsession";
}
return invocation.invoke(); // If user already logged in
}
    
}
