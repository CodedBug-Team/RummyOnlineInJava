/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actions.contactus;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import database.contactus.DatabaseContactUS;

/**
 *
 * @author Abhishek
 */
public class ContactUS extends ActionSupport implements Preparable, ModelDriven{

    DatabaseContactUS dcu;
    
    @Override
    public String execute()
    {
        boolean b=dcu.set();
        if(b==true)
        return "success";
        else
            return "error";
    }
    @Override
    public void prepare() throws Exception {
        dcu=new DatabaseContactUS();
    }

    @Override
    public Object getModel() {
        return dcu;
    }
    
}
