/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Origin;

import java.sql.Timestamp;

/**
 *
 * @author Wataru
 */
public class UserDataDTO {
    private int id;
    private String name;
    private String password;
    private String departure;
    private String arrival;
    private String line;
    private int deleteflg;
    private Timestamp newdate;

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
    public Timestamp getNewdate(){
        return newdate;
    }
    public void setNewdate(Timestamp newdate){
        this.newdate = newdate;
    }
}