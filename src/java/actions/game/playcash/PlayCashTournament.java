/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actions.game.playcash;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import database.game.playcash.DatabasePlayCashTournament;

/**
 *
 * @author Abhishek
 */
public class PlayCashTournament extends ActionSupport implements ModelDriven,Preparable {
     
    DatabasePlayCashTournament bpt;
    @Override
    public String execute()
    {
        return bpt.set();
    }

    @Override
    public Object getModel() {
        return bpt;
    }

    @Override
    public void prepare() throws Exception {
        bpt=new DatabasePlayCashTournament();
    }
    
}
