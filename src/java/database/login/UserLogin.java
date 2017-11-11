/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database.login;

import com.opensymphony.xwork2.ActionContext;
import database.LoginRegisterConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author Abhishek
 */
public class UserLogin  //implements SessionAware{
{
    private static final long serialVersionUID = 1L;
    private String lusername;
    private String lpassword;
    Map session;
    
    int practice_cash;
    int real_cash;

    public int getPractice_cash() {
        return practice_cash;
    }

    public void setPractice_cash(int practice_cash) {
        this.practice_cash = practice_cash;
    }

    public int getReal_cash() {
        return real_cash;
    }

    public void setReal_cash(int real_cash) {
        this.real_cash = real_cash;
    }

//    public Map getSession() {
//        return session;
//    }
//    
//    @Override
//    public void setSession(Map<String, Object> map) {
//        throw new UnsupportedOperationException("Not supported yet.");
//    }
    
    public String getLpassword() {
        return lpassword;
    }

    public void setLpassword(String lpassword) {
        this.lpassword = lpassword;
    }

    public String getLusername() {
        return lusername;
    }

    public void setLusername(String lusername) {
        this.lusername = lusername;
    }
    
    public String loginValidate() throws SQLException
    {
        
        Connection connection=null;
        try
        {
            connection = LoginRegisterConnection.getConnection();
            PreparedStatement stmt=connection.prepareStatement("select username, password from user_details where username=? and password=?");
stmt.setString(1,lusername);
//System.out.println("1");
stmt.setString(2,lpassword);
//System.out.println("2");
ResultSet rs=stmt.executeQuery();
//System.out.println("3");
int count=0;

while(rs.next())
{
    String name=rs.getString(1);
    System.out.println(name);
    //String password=rs.getString(2);
      session = ActionContext.getContext().getSession();
        session.put("username",name);
            //session.put("context", new Date());
            int a=session.size();
            System.out.println(a);
            System.out.println("session is"+session);
            
//HttpServletRequest request = ServletActionContext.getRequest();
//  request.setAttribute("username", name);
//  Object o =request.getAttribute("username");
//  String s=(String)o;
//  System.out.println(s);
//  session.put("username",s);
//            //session.put("username",name);
//            System.out.println(session);
//            System.out.println(s);
    
    session.put("username",name);
    count++;
    
}

PreparedStatement stmt1=connection.prepareStatement("select practice_cash, real_cash from user_cash_details where username1=?");
stmt1.setString(1,lusername);

ResultSet rs1=stmt1.executeQuery();
while(rs1.next())
{
    practice_cash=rs1.getInt(1);
    real_cash=rs1.getInt(2);
    session.put("practice_cash", practice_cash);
    session.put("real_cash", real_cash);
}

if(count>0)
        {
            
            connection.close();
            //Thread.sleep(5000);
            return "success";
        }
else
{
    return "error";
}

        }
        catch(SQLException e)
        {
            System.out.println("sql error");
            e.printStackTrace();
        }
        catch(Exception e)
        {
            e.printStackTrace();
            return "error";
        }
        finally
        {
            connection.close();
        }
        return "error";
    }
    
//    public String logout() throws Exception {
//        HttpSession session = ServletActionContext.getRequest().getSession();
//        session.removeAttribute("logined");
//        session.removeAttribute("context"); 
//  session = ActionContext.getContext().getSession();
// session.remove("logined");
//        session.remove("context");
//        return "success";
//    }

    
}
