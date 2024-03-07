/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author User
 */
public class Car {
    private int vehicle_id;
    private String cname;
    private float dailyprice;
    private int year;
    private String image;
    private String description;
    private int type_id;
    private int seller_id;
    private String deepdescription;
    public Car() {
    }

    public Car(int vehicle_id, String cname, float dailyprice, int year, String image, String description, int type_id, int seller_id, String deepdescription) {
        this.vehicle_id = vehicle_id;
        this.cname = cname;
        this.dailyprice = dailyprice;
        this.year = year;
        this.image = image;
        this.description = description;
        this.type_id = type_id;
        this.seller_id = seller_id;
        this.deepdescription = deepdescription;
    }
    
    
    public Car(int vehicle_id, String cname, float dailyprice, int year, String image, String description, int type_id, int seller_id) {
        this.vehicle_id = vehicle_id;
        this.cname = cname;
        this.dailyprice = dailyprice;
        this.year = year;
        this.image = image;
        this.description = description;
        this.type_id = type_id;
        this.seller_id = seller_id;
    }

    public int getVehicle_id() {
        return vehicle_id;
    }

    public void setVehicle_id(int vehicle_id) {
        this.vehicle_id = vehicle_id;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public float getDailyprice() {
        return dailyprice;
    }

    public void setDailyprice(float dailyprice) {
        this.dailyprice = dailyprice;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getType_id() {
        return type_id;
    }

    public void setType_id(int type_id) {
        this.type_id = type_id;
    }

    public int getSeller_id() {
        return seller_id;
    }

    public void setSeller_id(int seller_id) {
        this.seller_id = seller_id;
    }

    public String getDeepdescription() {
        return deepdescription;
    }

    public void setDeepdescription(String deepdescription) {
        this.deepdescription = deepdescription;
    }

    @Override
    public String toString() {
        return "Car{" + "vehicle_id=" + vehicle_id + ", cname=" + cname + ", dailyprice=" + dailyprice + ", year=" + year + ", image=" + image + ", description=" + description + ", type_id=" + type_id + ", seller_id=" + seller_id + ", deepdescription=" + deepdescription + '}';
    }

    
    
}
