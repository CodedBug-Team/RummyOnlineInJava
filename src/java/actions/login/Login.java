/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actions.login;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import database.login.UserLogin;
import java.sql.SQLException;

/**
 *
 * @author Abhishek
 */
public class Login extends ActionSupport implements Preparable, ModelDriven{

    UserLogin ul;
    @Override
    public String execute() throws SQLException, InterruptedException
    {
        //Thread.sleep(5000);
        return ul.loginValidate();
        
    }
    @Override
    public void prepare() throws Exception {
        ul=new UserLogin();
    }

    @Override
    public Object getModel() {
        return ul;
    }
    
}
