/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database.register;

import database.LoginRegisterConnection;
import java.sql.*;

/**
 *
 * @author Abhishek
 */
public class UserRegister {
    private String username;
    private String password;
    private String email;
    private String gender;
    private String dob;
    private String state;
    private String mobile;
    
    int practice_cash=1000;
    int real_cash=0;
    //private String checkme;
//
//    public String getCheckme() {
//        return checkme;
//    }
//
//    public void setCheckme(String checkme) {
//        this.checkme = checkme;
//    }

    public String getDob() {
        return dob;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    public String set() throws SQLException
    {
        Connection connection=null;
        try
        {
            connection = LoginRegisterConnection.getConnection();
            
            PreparedStatement stmt2=connection.prepareStatement("select * from user_details where username=? and password=? and email=? and gender=? and dob=? and state=? and mobile=?");
stmt2.setString(1,username);
stmt2.setString(2,password);
stmt2.setString(3,email);
stmt2.setString(4,gender);
stmt2.setString(5,dob);
stmt2.setString(6,state);
stmt2.setString(7,mobile);
ResultSet rs=stmt2.executeQuery();
int count=0;
while(rs.next())
{
    count++;
}
if(count>0)
{
    connection.close();
    return "olduser";
}
else
{

            PreparedStatement stmt=connection.prepareStatement("insert into user_details (username, password ,email, gender,dob,state,mobile ) values(?,?,?,?,?,?,?)");
            connection.setAutoCommit(false);
stmt.setString(1,username);
stmt.setString(2,password);
stmt.setString(3,email);
stmt.setString(4,gender);
stmt.setString(5,dob);
stmt.setString(6,state);
stmt.setString(7,mobile);
stmt.executeUpdate();

PreparedStatement stmt3=connection.prepareStatement("insert into user_cash_details (username1, practice_cash, real_cash ) values(?,?,?)");
stmt3.setString(1,username);
stmt3.setInt(2,practice_cash);
stmt3.setInt(3,real_cash);
stmt3.executeUpdate();
            connection.commit();
connection.close();
        }
        }
          catch(Exception e)
    {
        e.printStackTrace();
        connection.close();
        return "error";
    }
        return "success";
    }
        
}
