/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actions.register;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import database.register.UserRegister;
import java.sql.SQLException;

/**
 *
 * @author Abhishek
 */
public class Register extends ActionSupport implements Preparable , ModelDriven {

    UserRegister us;
    @Override
    public String execute() throws SQLException
    {
        return us.set();
        
    }
    @Override
    public void prepare() throws Exception {
        us=new UserRegister();
    }

    @Override
    public Object getModel() {
        return us;
    }
    
}
