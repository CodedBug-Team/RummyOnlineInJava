/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database.game.playcash;

import com.opensymphony.xwork2.ActionContext;
import database.CashTournamentConnection;
import database.GenerateGameConnection;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Map;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;

/**
 *
 * @author Abhishek
 */
public class DatabasePlayCashTournament1 implements ServletRequestAware{
    
        private String username;
        private  ArrayList cash_tournament_num;
        String cash_tournament_num1;
        private int entryfee;
        private int prize;
        private int maxjoined;
        private Map session;
        private int joined;
        String time;
        HttpServletRequest request;
        int START = 1000;
        int END = 10000;
        Random random;
        private int current_game_num;
        private String current_game_status="open";

        Connection connection;

    public String getCash_tournament_num1() {
        return cash_tournament_num1;
    }

    public void setCash_tournament_num1(String cash_tournament_num1) {
        this.cash_tournament_num1 = cash_tournament_num1;
    }

        public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
        
	public HttpServletRequest getServletRequest() {
		return this.request;
	}
    public int getCurrent_game_num() {
        return current_game_num;
    }

    public void setCurrent_game_num(int current_game_num) {
        this.current_game_num = current_game_num;
    }

    public String getCurrent_game_status() {
        return current_game_status;
    }

    public void setCurrent_game_status(String current_game_status) {
        this.current_game_status = current_game_status;
    }

    public Random getRandom() {
        return random;
    }

    public void setRandom(Random random) {
        this.random = random;
    }
        
    public ArrayList getCash_tournament_num() {
        return cash_tournament_num;
    }

    public void setCash_tournament_num(ArrayList cash_tournament_num) {
        this.cash_tournament_num = cash_tournament_num;
    }

//    public int getCash_tournament_num1() {
//        return cash_tournament_num1;
//    }
//
//    public void setCash_tournament_num1(int cash_tournament_num1) {
//        this.cash_tournament_num1 = cash_tournament_num1;
//    }

        
    public int getJoined() {
        return joined;
    }

    public void setJoined(int joined) {
        this.joined = joined;
    }
        
    public int getEntryfee() {
        return entryfee;
    }

    public void setEntryfee(int entryfee) {
        this.entryfee = entryfee;
    }

    public int getMaxjoined() {
        return maxjoined;
    }

    public void setMaxjoined(int maxjoined) {
        this.maxjoined = maxjoined;
    }

    public int getPrize() {
        return prize;
    }

    public void setPrize(int prize) {
        this.prize = prize;
    }
     
    public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
    }
        
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
        
   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    public String set()
    {
        try   
        {
        SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd");
    java.util.Date date = new java.util.Date();
    time = sdf.format(date);
    System.out.println(time);
    
    session = ActionContext.getContext().getSession();
        username=(String)session.get("username");
        System.out.println("username"+username);
         //if(cash_tournament_num.isEmpty())
        System.out.println("prize"+prize);
        System.out.println("joined"+joined);
         //cash_tournament_num1=request.getParameter("cash_tournament_num1");
         cash_tournament_num1=getServletRequest().getParameter("cash_tournament_num1");
         //Map m=ActionContext.getContext().getParameters();
        //System.out.println(m);
        //System.out.println("s"+s);
        System.out.println("got this value\t"+cash_tournament_num1);
         if(cash_tournament_num1.equals(null))
        {
            //System.out.println(maxjoined);
         return "error";
        }
        else
        {
           // System.out.println("success");
            try
            {
            connection=CashTournamentConnection.getConnection();
    PreparedStatement stmt1=connection.prepareStatement("select joined from cash_tournament where cash_tournament_num=?");
stmt1.setString(1,cash_tournament_num1);
ResultSet rs=stmt1.executeQuery();
int oneortwo=0;
while(rs.next())
{
    oneortwo=rs.getInt(1);
}
if(oneortwo==0)
{
    try
        {
            connection=CashTournamentConnection.getConnection();
      PreparedStatement stmt8=connection.prepareStatement("insert into cash_tournament (cash_tournament_num, date, entryfee ,prize, maxjoined, joined) values(?,?,?,?,?,?)");
stmt8.setString(1,cash_tournament_num1);
stmt8.setString(2,time);
stmt8.setInt(3,entryfee);
stmt8.setInt(4,prize);
stmt8.setInt(5,maxjoined);
//stmt1.setInt(5,joined);
stmt8.setInt(6,1);
stmt8.executeUpdate();
        }
            catch(SQLException e)
            {
                System.out.println("error");
                e.printStackTrace();
            }
}
else if(oneortwo==1)
{
    try
        {
            
            connection=CashTournamentConnection.getConnection();
    PreparedStatement stmt9=connection.prepareStatement("update cash_tournament set joined='"+2+"' where cash_tournament_num='"+cash_tournament_num1+"'");
stmt9.execute();
generateRandom();
        }
            catch(SQLException e)
            {
                e.printStackTrace();
            }
}
else
{
    return "error";
}
            }
            catch(Exception e)
            {
                e.printStackTrace();
                return "error";
            }
            return "success";
        }
}
    
        catch(Exception e)
        {
            e.printStackTrace();
            return "error";
        }
    }
    
    public void generateRandom()
    {
         random = new Random();
    
       showRandomInteger(START, END, random);
}
    
     public void showRandomInteger(int aStart, int aEnd, Random aRandom){
    if ( aStart > aEnd ) {
      throw new IllegalArgumentException("Start cannot exceed End.");
    }
    //get the range, casting to long to avoid overflow problems
    long range = (long)aEnd - (long)aStart + 1;
    // compute a fraction of the range, 0 <= frac < range
    long fraction = (long)(range * aRandom.nextDouble());
    int randomNumber =  (int)(fraction + aStart);    
    //log("Generated : " + randomNumber);
    
    //System.out.println("random number\t"+randomNumber);
    current_game_num=randomNumber;
    
    try
    {
        connection=GenerateGameConnection.getConnection();
        
        PreparedStatement stmt2=connection.prepareStatement("select current_game_num, date from current_game where current_game_num=? and date=?");
stmt2.setInt(1,current_game_num);
stmt2.setString(2,time);
ResultSet rs=stmt2.executeQuery();
int count=0;
while(rs.next())
{
count++;
}
        if(count>0)
        {
            showRandomInteger(START, END, random);
        }
        else
        {
            System.out.println("num to delete\t"+cash_tournament_num1);
            Statement st = connection.createStatement(); 
String sql = "delete from current_game where current_game_num='"+cash_tournament_num1+"'";
int delete = st.executeUpdate(sql);

System.out.println("num to add\t"+current_game_num);
            PreparedStatement stmt1=connection.prepareStatement("insert into current_game (current_game_num, date , current_game_status) values(?,?,?)");
stmt1.setInt(1,current_game_num);
stmt1.setString(2,time);
stmt1.setString(3,current_game_status);
stmt1.executeUpdate();

connection.close();
        }
    }
    catch(SQLException e)
    {
        e.printStackTrace();
    }
  }

   
}