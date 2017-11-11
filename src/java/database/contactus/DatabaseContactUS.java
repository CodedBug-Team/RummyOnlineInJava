/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database.contactus;

import database.ContactUSConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

    
/**
 *
 * @author Abhishek
 */
public class DatabaseContactUS {
    private String name;
    private String email;
    private String message;
    
	String emailBody=message+"\t from "+email;
	String emailSubject="A mail from A4ikka.com";
final String senderEmailID = "abhishek.smile09@gmail.com";
        //final String senderEmailID = "er.abhishekaggarwal10@gmail.com";
//final String senderPassword = "mygmailabhiagg1";
final String senderPassword = "khnpsojmujfblxso";
        //final String senderPassword = "mygmailabhiagg2";
final String emailSMTPserver = "smtp.gmail.com";
final String emailServerPort = "465";
 String receiver="er.abhishekaggarwal10@gmail.com";
//String receiver="abhishek.smile09@gmail.com";

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    public boolean set() 
{
System.out.println(""+email);
Properties props = new Properties();
props.put("mail.smtp.user",senderEmailID);
props.put("mail.smtp.host", emailSMTPserver);
props.put("mail.smtp.port", emailServerPort);
props.put("mail.smtp.starttls.enable", "true");
props.put("mail.smtp.auth", "true");

props.put("mail.smtp.socketFactory.port", emailServerPort);
props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
props.put("mail.smtp.socketFactory.fallback", "false");

SecurityManager security = System.getSecurityManager();
try
{
Authenticator auth = new SMTPAuthenticator();
Session session = Session.getInstance(props, auth);
// session.setDebug(true);

MimeMessage msg = new MimeMessage(session);

msg.setText(emailBody);
msg.setSubject(emailSubject);
msg.setFrom(new InternetAddress(senderEmailID));
msg.addRecipient(Message.RecipientType.TO,new InternetAddress(receiver));
Transport.send(msg);
System.out.println("mail sent");
}
catch (Exception mex) {
mex.printStackTrace();
}
return true;
}
private class SMTPAuthenticator extends javax.mail.Authenticator
{
public PasswordAuthentication getPasswordAuthentication()
{
return new PasswordAuthentication(senderEmailID, senderPassword);
}
}
    
    
//    public String set()
//    {
//        
//System.out.println(""+email);
//Properties props = new Properties();
//props.put("mail.smtp.user",senderEmailID);
//props.put("mail.smtp.host", emailSMTPserver);
//props.put("mail.smtp.port", emailServerPort);
//props.put("mail.smtp.starttls.enable", "true");
//props.put("mail.smtp.auth", "true");
//props.put("mail.smtp.socketFactory.port", emailServerPort);
//props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
//props.put("mail.smtp.socketFactory.fallback", "false");
//
//SecurityManager security = System.getSecurityManager();
//try
//{
//try
//{
//
//Authenticator auth = new SMTPAuthenticator();
//Session session = Session.getInstance(props, auth);
//// session.setDebug(true);
//
//MimeMessage msg = new MimeMessage(session);
//
//msg.setText(emailBody);
//msg.setSubject(emailSubject);
//msg.setFrom(new InternetAddress(senderEmailID));
//msg.addRecipient(Message.RecipientType.TO,new InternetAddress(receiver));
//Transport.send(msg);
//System.out.println("mail sent");
//}
//catch (Exception mex) {
//mex.printStackTrace();
//}
//}
//catch (Exception e)
//{
//	System.out.println(e);
//}
//return "success";
//}
//private class SMTPAuthenticator extends javax.mail.Authenticator
//{
//        @Override
//public PasswordAuthentication getPasswordAuthentication()
//{
//return new PasswordAuthentication(senderEmailID, senderPassword);
//}
//}
}
