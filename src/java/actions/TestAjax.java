/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import com.opensymphony.xwork2.ActionSupport;


/**
 *
 * @author Abhishek
 */
public class TestAjax extends ActionSupport  {
 

    @Override
    public String execute() throws Exception {
       System.out.println("aa");
        return "success";
    }
}