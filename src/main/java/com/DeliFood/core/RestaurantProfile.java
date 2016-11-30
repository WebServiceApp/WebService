package com.DeliFood.core;

import java.io.Serializable;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import java.awt.Image;

import java.awt.geom.Arc2D;

/**
 * Created by pengfeizhu on 11/20/16.
 */
@Entity
public class RestaurantProfile implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long profile_id;

    private Long restaurant_id;
    private String name;
    private byte[] image;
    private int price_level;
    private Float rating;
    private Integer priceLevel;



    public RestaurantProfile() {

    };

    public RestaurantProfile(Long restaurant_id, String name, String address) {
        this.restaurant_id = restaurant_id;
        this.name = name;

    };


    public Long getRestaurant_id() {

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



    public byte[] getImage() {

        return image;
    }

    public void setImage(byte[] image) {

        this.image = image;
    }

    public Float getRating() {return rating;}

    public void setRating(Float rating) {this.rating = rating;}

    public Integer getPriceLevel() {return priceLevel;}

    public void setPriceLevel(Integer priceLevel) {this.priceLevel = priceLevel;}


}
