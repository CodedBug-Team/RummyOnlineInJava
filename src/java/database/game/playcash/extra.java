/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database.game.playcash;

import com.opensymphony.xwork2.ActionContext;
import database.CashTournamentConnection;
import java.sql.*;
import java.util.Map;

/**
 *
 * @author Abhishek
 */
public class extra {
    
        private String username;
        private String gametype;
        private int entryfee;
        private int prize;
        private int maxjoined;
        private Map session;
        private int joined;
        private int idcash_tournament;

        Connection connection;
    public int getIdcash_tournament() {
        return idcash_tournament;
    }

    public void setIdcash_tournament(int idcash_tournament) {
        this.idcash_tournament = idcash_tournament;
    }
        

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

    
        
    public String getGametype() {
        return gametype;
    }

    public void setGametype(String gametype) {
        this.gametype = gametype;
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
        
   
    
    public String set()
    {
    session = ActionContext.getContext().getSession();
        username=(String)session.get("username");
//        session.put("gametype",gametype);
//        session.put("entryfee",entryfee);
//        session.put("prize",prize);
//        session.put("maxjoined",maxjoined);
        
        try
        {
    connection=CashTournamentConnection.getConnection();
     PreparedStatement stmt=connection.prepareStatement("select idcash_tournament, gametype, entryfee, prize, maxjoined, joined from cash_tournament where gametype=? and entryfee=? and prize=? and maxjoined=?");
stmt.setString(2,gametype);
stmt.setInt(3,entryfee);
stmt.setInt(4,prize);
stmt.setInt(5,maxjoined);
ResultSet rs=stmt.executeQuery();
while(rs.next())
{
    //rs.isAfterLast();   //true if the cursor is after the last row; false if the cursor is at any other position or the result set contains no rows
    //rs.isLast();    //true if the cursor is on the last row; false otherwise
    joined=rs.getInt(6);
    
}
if(joined==0)
{
   set1();
   //return "new";
}
else if(joined==2 && rs.isAfterLast())
{
    set1();
    //return "new";
}
else if(joined==1)
{
    //do;
    //break;
    idcash_tournament=rs.getInt(1);
PreparedStatement stmt3=connection.prepareStatement("insert into user_cash_tournament (idcash_tournament1, cash_tournament_username) values(?,?)");
stmt3.setInt(1, idcash_tournament);
stmt3.setString(2, username);
stmt3.executeUpdate();
session = ActionContext.getContext().getSession();
session.put("idcash_tournament", idcash_tournament);
    
//return "";
    
    
}
return"success";
        }
        catch(SQLException e)
        {
            e.printStackTrace();
            return "error";
        }
}
    
    public void set1()
    {
        try
        {
      PreparedStatement stmt1=connection.prepareStatement("insert into cash_tournament (gametype, entryfee ,prize, maxjoined, joined) values(?,?,?,?,?)");
stmt1.setString(1,gametype);
stmt1.setInt(2,entryfee);
stmt1.setInt(3,prize);
stmt1.setInt(4,maxjoined);
//stmt1.setInt(5,joined);
stmt1.setInt(5,1);
stmt1.executeUpdate();
Statement stmt2=connection.createStatement();
//ResultSet rs1=stmt2.executeQuery("select id_cash_tournament from cash_tournament");
//while(rs1.next())
//{
//    idcash_tournament=rs1.getInt(1);
//}
ResultSet rs1=stmt2.executeQuery("select LAST_INSERT_ID()");
while(rs1.next())
{
    idcash_tournament=rs1.getInt(1);
}
PreparedStatement stmt3=connection.prepareStatement("insert into user_cash_tournament (idcash_tournament1, cash_tournament_username) values(?,?)");
stmt3.setInt(1, idcash_tournament);
stmt3.setString(2, username);
stmt3.executeUpdate();
session = ActionContext.getContext().getSession();
session.put("idcash_tournament", idcash_tournament);

        }
         catch(SQLException e)
        {
            e.printStackTrace();
        }

    }
}