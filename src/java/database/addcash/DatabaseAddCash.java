/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database.addcash;

import com.opensymphony.xwork2.ActionContext;
import database.LoginRegisterConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Map;

/**
 *
 * @author Abhishek
 */
public class DatabaseAddCash {
    private String firstname;
    private String lastname;
    private String dob;
     private String address;
    private String city;
    private String state;
    private String pin;
    private String phone;
    private String amount;
    private String username;
    Map session;

    
    
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPin() {
        return pin;
    }

    public void setPin(String pin) {
        this.pin = pin;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
        
    public String set()
    {
             Connection connection=null;
        try
        {
            session = ActionContext.getContext().getSession();
        username=(String)session.get("username");
        //System.out.println("jama");
        
            connection = LoginRegisterConnection.getConnection();
            
PreparedStatement stmt=connection.prepareStatement("insert into add_cash (username2, firstname ,lastname, dob, address, city, state, pin ,phone, amount ) values(?,?,?,?,?,?,?,?,?,?)");
            connection.setAutoCommit(false);
stmt.setString(1,username);
stmt.setString(2,firstname);
stmt.setString(3,lastname);
stmt.setString(4,dob);
stmt.setString(5,address);
stmt.setString(6,city);
stmt.setString(7,state);
stmt.setString(8,pin);
stmt.setString(9,phone);
stmt.setString(10,amount);
stmt.executeUpdate();
            connection.commit();
connection.close();
        
       }
          catch(Exception e)
    {
        e.printStackTrace();
        //connection.close();
        return "error";
    }
        return "success";
    }
}
