/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database.game.playcash;

import com.opensymphony.xwork2.ActionContext;
import database.GenerateGameConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

/**
 *
 * @author Abhishek
 */
public class DatabaseCashTournament {
    
        //ArrayList idcash_tournament=new ArrayList();
        
        Connection connection;
        private String current_game_status="open";
        Map session;
        int[] idcash_tournament1=new int[20];
    
    public String set()
    {
        
        try
    {
        connection=GenerateGameConnection.getConnection();
        
        PreparedStatement stmt2=connection.prepareStatement("select current_game_num, date , current_game_status from current_game where current_game_status=? ");
        
stmt2.setString(1,current_game_status);

ResultSet rs=stmt2.executeQuery();
//int count=1;
int i=1;
while(rs.next())
{
    //System.out.println("8");
    //idcash_tournament.add(rs.getInt(1));
    idcash_tournament1[i]=rs.getInt(1);
    session = ActionContext.getContext().getSession();
        session.put("cashtournament"+i,idcash_tournament1[i]);
        System.out.println(idcash_tournament1[i]);
        System.out.println(i);
    i++;
//count++;
}

return "success";
    }
    catch(SQLException e)
    {
        e.printStackTrace();
        return "error";
    }
    }
}
