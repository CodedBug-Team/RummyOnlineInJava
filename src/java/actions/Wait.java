/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

/**
 *
 * @author Abhishek
 */
public class Wait {
    public String execute() throws Exception
{
    Thread.sleep(5000);
    return "success";
}

}