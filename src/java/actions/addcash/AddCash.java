/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actions.addcash;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import database.addcash.DatabaseAddCash;

/**
 *
 * @author Abhishek
 */
public class AddCash extends ActionSupport implements Preparable, ModelDriven{
    
    DatabaseAddCash dac;
    @Override
    public String execute()
    {
        return dac.set();
    }

    @Override
    public void prepare() throws Exception {
        dac=new DatabaseAddCash();
    }

    @Override
    public Object getModel() {
        return dac;
    }
    
}
