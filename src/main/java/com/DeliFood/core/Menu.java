package com.DeliFood.core;
import java.awt.Image;

import java.awt.geom.Arc2D;
import java.io.Serializable;

import javax.persistence.*;

/**
 * Created by Fengjuan on 11/16/16.
 */
@Entity
public class Menu implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int menu_id;

    private Long restaurant_id;
    @Column (name = "menu_item")
    private String name;
    private Float price;
    private String category;
    private String description;
    private byte[] image;


    public Menu() {

    };

    public Menu(int menu_id, String menu_item, Float price) {
        this.menu_id =
                menu_id;
        this.name = menu_item;
        this.price = price;
    };


    public int getMenu_id() {return menu_id;}
    public void setMenu_id(int menu_id) {
        this.menu_id = menu_id;
    }

    public String getName() {
        return name;
    }
    public void setName(String menu_item) {
        this.name = menu_item;
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