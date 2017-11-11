/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actions.generategame;

import com.opensymphony.xwork2.ActionSupport;
import database.GenerateGameConnection;
import database.game.playcash.DatabasePlayCashTournament;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;


/**
 *
 * @author Abhishek
 */
public class GenerateGame extends  ActionSupport{
    
    private int current_game_num;
    int START = 1000;
    int END = 10000;
    Connection connection;
    String time;
    Random random;
    private String current_game_status="open";
    ArrayList al=new ArrayList();
    private int generated_num;
    private int idcurrent_game;

    public int getIdcurrent_game() {
        return idcurrent_game;
    }

    public void setIdcurrent_game(int idcurrent_game) {
        this.idcurrent_game = idcurrent_game;
    }

    public int getGenerated_num() {
        return generated_num;
    }

    public void setGenerated_num(int generated_num) {
        this.generated_num = generated_num;
    }
    

    public String getCurrent_game_status() {
        return current_game_status;
    }

    public void setCurrent_game_status(String current_game_status) {
        this.current_game_status = current_game_status;
    }
    

    public int getCurrent_game_num() {
        return current_game_num;
    }

    public void setCurrent_game_num(int current_game_num) {
        this.current_game_num = current_game_num;
    }

    
    @Override
    public String execute()
    {
//     log("Generating random integers in the range 1..10.");
//    SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd ");
//    Date date = new Date();
//    time = sdf.format(date);
//    System.out.println(time);
    
    random = new Random();
    for (int idx = 1; idx <= 16; ++idx){
       showRandomInteger(START, END, random);
    }
       //DatabasePlayCashTournament dpct=new DatabasePlayCashTournament();
    //return dpct.initialGameNum();
    
       
    //return "chain";
    return "success";
    }
    
//    log("Done.");
//    return "success";
    
     public String showRandomInteger(int aStart, int aEnd, Random aRandom){
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
    //current_game_num=randomNumber;
    generated_num=randomNumber;
    
    try
    {
        SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd ");
    Date date = new Date();
    time = sdf.format(date);
    System.out.println(time);
        connection=GenerateGameConnection.getConnection();
        
    //    PreparedStatement stmt2=connection.prepareStatement("select current_game_num, date from current_game where current_game_num=? and date=?");
            PreparedStatement stmt2=connection.prepareStatement("select generated_num, date from current_game where generated_num=? and date=?");
stmt2.setInt(1,generated_num);
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
            PreparedStatement stmt1=connection.prepareStatement("insert into current_game (generated_num, date , current_game_status) values(?,?,?)");
stmt1.setInt(1,generated_num);
stmt1.setString(2,time);
stmt1.setString(3,current_game_status);
stmt1.executeUpdate();
ResultSet rs1=stmt1.executeQuery("SELECT LAST_INSERT_ID() from current_game");
while(rs1.next())
{
//    current_game_num=rs1.getInt(1);
      idcurrent_game=rs1.getInt(1);
}
stmt1=connection.prepareStatement("update current_game set current_game_num='"+generated_num+idcurrent_game+"' where generated_num='"+generated_num+"'");
stmt1.executeUpdate();
connection.close();
return "success";
        }
return "success";
    }
    catch(SQLException e)
    {
        e.printStackTrace();
        return "error";
    }
  }
  
//  private static void log(String aMessage){
//    System.out.println(aMessage);
//  }
}
