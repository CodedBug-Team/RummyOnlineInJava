/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import com.opensymphony.xwork2.ActionSupport;
import java.io.InputStream;
import java.io.StringBufferInputStream;

/**
 *
 * @author Abhishek
 */
public class JAMA extends ActionSupport{
      private InputStream inputStream;
    public InputStream getInputStream() {
        return inputStream;
    }
    @Override
    public String execute()
    {
        System.out.println("1");
      

  
        inputStream = new StringBufferInputStream("Hello World! This is a text string response from a Struts 2 Action.");
        return "stream";
    }
}
