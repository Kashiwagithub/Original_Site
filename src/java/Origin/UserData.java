/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Origin;

import java.io.Serializable;
import java.util.ArrayList;

/**
 *
 * @author Wataru
 */
    public class UserData implements Serializable {
    private int id;
    private String name;
    private String password;
    private String departure;
    private String arrival;
    private String line;
    private int deleteflg;
    
    public UserData(){
        this.id = 0;
        this.name = "";
        this.password = "";
        this.departure= "";
        this.arrival = "";
        this.line = "";
        this.deleteflg = 0;
    }
    
    public int getID(){
        return id;
    }
    public void setID(int id){
        this.id = id;
    }
    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name = name;
    }
    public String getPassword(){
        return password;
    }
    public void setPassword(String password){
        this.password = password;
    }
    public String getDeparture(){
        return departure;
    }
    public void setDeparture(String departure){
        this.departure = departure;
    }
    public String getArrival(){
        return arrival;
    }
    public void setArrival(String arrival){
        this.arrival = arrival;
    }
    public String getLine(){
        return line;
    }
    public void setLine(String line){
        this.line = line;
    }
    public int getDeleteflg(){
        return deleteflg;
    }
    public void setDeleteflg(int deleteflg){
        this.deleteflg = deleteflg;
    }
    
    public ArrayList<String> checkproperties(){
        ArrayList<String> checkList = new ArrayList<String>();
        if(this.name.equals("")){
            checkList.add("name");
        }
        if(this.password.equals("")){
            checkList.add("password");
        }
        if(this.departure.equals("")){
            checkList.add("departure");
        }
        if(this.arrival.equals("")){
            checkList.add("arrival");
        }
        if(this.line.equals("")){
            checkList.add("line");
        }
        return checkList;
    }
    
    public void UD2DTOMapping(UserDataDTO udd){
        udd.setID(this.id);
        udd.setName(this.name);
        udd.setPassword(this.password);
        udd.setDeparture(this.departure);
        udd.setArrival(this.arrival);
        udd.setLine(this.line);
        udd.setDeleteflg(this.deleteflg);
    }
    
    //DTOからUserDataに値を渡す
    public void DTO2UDMapping(UserDataDTO udd){
        this.setID(udd.getID());
        this.setName(udd.getName());
        this.setPassword(udd.getPassword());
        this.setDeparture(udd.getDeparture());
        this.setArrival(udd.getArrival());
        this.setLine(udd.getLine());
        this.setDeleteflg(udd.getDeleteflg());
    }
}

