package com.DeliFood.core;
import java.awt.Image;

import java.awt.geom.Arc2D;
import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
/**
 * Created by Fengjuan on 11/16/16.
 */
@Entity
public class Menu implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long menu_id;

    private Long restaurant_id;
    private String menu_item;
    private Float price;
    private String category;
    private String description;
    private byte[] image;


    public Menu() {

    };

    public Menu(Long menu_id, String menu_item, Float price) {
        this.menu_id =
                menu_id;
        this.menu_item = menu_item;
        this.price = price;
    };


    public Long getMenu_id() {return menu_id;}
    public void setMenu_id(Long menu_id) {
        this.menu_id = menu_id;
    }

    public String getMenuItem() {
        return menu_item;
    }
    public void setMenu_item(String menu_item) {
        this.menu_item = menu_item;
    }

    public String getCategory() {
        return category;
    }
    public void setCategory(String category) {
        this.category = category;
    }

    public Float getPrice() {
        return price;
    }
    public void setPrice(Float price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }

    public byte[] getImage() {
        return image;
    }
    public void setImage(byte[] image) {
        this.image = image;
    }


    public Long getRestaurant_id() { return restaurant_id;}
    public void setRestaurant_id(Long restaurant_id) { this.restaurant_id = restaurant_id;}
}