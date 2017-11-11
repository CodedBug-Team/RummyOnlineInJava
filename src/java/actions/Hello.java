package actions;


import com.opensymphony.xwork2.ActionSupport;
import java.sql.SQLException;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Abhishek
 */
public class Hello extends ActionSupport{
     @Override
    public String execute() throws ClassNotFoundException, SQLException
    {
        System.out.println("hello");
        return "success";
    }
}
