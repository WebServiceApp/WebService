package com.DeliFood.core;

import java.awt.Image;

import java.awt.geom.Arc2D;
import java.io.Serializable;


import javax.persistence.*;

/**
 * Created by pengfeizhu on 11/18/16.
 */


@Entity
//@NamedQuery(name = "Meau.byRid", query = "from Menu where restaurant_id = ?")
public class Menu implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long menu_id;

    /*@GeneratedValue(strategy = GenerationType.AUTO)
        @ManyToOne
        @JoinColumn (name = "restaurant_id")
        private Restaurant restaurant;*/
    //@GeneratedValue(strategy = GenerationType.AUTO)


    private Long restaurant_id;
    private String menu_item;
    private Float price;
    private String description;
    private byte[] image;
    private String category;

    public Menu() {

    }


     /*public Menu(Restaurant restaurant, String meau_item, String description) {
            this.restaurant = restaurant;
            this.menu_item = meau_item;
            this.description = description;
        }*/

    public Menu(Long restaurant_id, String meau_item, String description) {
        this.restaurant_id = restaurant_id;
        this.menu_item = meau_item;
        this.description = description;
    }

    public Long getMenu_id() {
        return menu_id;
    }

    public void setMenu_id(Long menu_id){
        this.menu_id = menu_id;
    }

    /*public void setRestaurant(Restaurant restaurant) {

            this.restaurant = restaurant;
        }

        public Restaurant getRestaurant() {
            return restaurant;
        }*/

    public void setRestaurant_id(Long restaurant_id) {

        this.restaurant_id = restaurant_id;
    }

    public Long getRestaurant_id() {
        return restaurant_id;
    }

    public void setMenu_item (String menu) {
        this.menu_item = menu;
    }

    public String getMenu_item() {
        return menu_item;
    }

    public void setPrice (Float price) {
        this.price = price;
    }

    public Float getPrice() {
        return price;
    }

    public void setDescription (String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }

    public void setImage (byte[] image) {
        this.image = image;
    }

    public byte[] getImage() {
        return image;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getCategory() {
        return category;
    }


}

