/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actions.logout;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;

/**
 *
 * @author Abhishek
 */
public class Logout extends ActionSupport{
    @Override
    public String execute()
    {
        Map session = ActionContext.getContext().getSession();
        
session.remove("logined"); 
//session.remove("context");

        return "success";
    }
    
}
