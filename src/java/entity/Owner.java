/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author User
 */
public class Owner {
    private int ownerid;
    private String ownername;

    public Owner() {
    }

    public Owner(int ownerid, String ownername) {
        this.ownerid = ownerid;
        this.ownername = ownername;
    }

    public int getOwnerid() {
        return ownerid;
    }

    public void setOwnerid(int ownerid) {
        this.ownerid = ownerid;
    }

    public String getOwnername() {
        return ownername;
    }

    public void setOwnername(String ownername) {
        this.ownername = ownername;
    }

    @Override
    public String toString() {
        return "Owner{" + "ownerid=" + ownerid + ", ownername=" + ownername + '}';
    }
    
}
