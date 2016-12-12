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
public class Restaurant implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int restaurant_id;
    private String name;
    private String address;
    private String category;
    private String description;
    private byte[] image;
    private String phone;
    private Float rating;
    private Integer priceLevel;


    public Restaurant() {

    };

    public Restaurant(int restaurant_id, String name, String address) {
        this.restaurant_id =
                restaurant_id;
        this.name = name;
        this.address = address;
    };


    public int getRestaurant_id() {
        return restaurant_id;
    }

    public void setRestaurant_id(Long restaurant_id_id) {
        this.restaurant_id = restaurant_id;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }
    public void setCategory(String category) {
        this.category = category;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Float getRating() {return rating;}

    public void setRating(Float rating) {this.rating = rating;}

    public Integer getPriceLevel() {return priceLevel;}

    public void setPriceLevel(Integer priceLevel) {this.priceLevel = priceLevel;}

}