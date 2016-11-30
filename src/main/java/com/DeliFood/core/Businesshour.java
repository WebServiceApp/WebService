package com.DeliFood.core;

import javax.persistence.Entity;
import java.io.Serializable;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Created by pengfeizhu on 11/20/16.
 */
@Entity
public class Businesshour implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long hour_id;

    private Long restaurant_id;
    private Long start_time;
    private Long end_time;
    private String day;



    public Businesshour() {

    };

    public Businesshour(Long restaurant_id, String day) {
        this.restaurant_id =
                restaurant_id;
        this.day = day;

    };


    public Long getHour_id (){
        return hour_id;
    }

    public void setHour_id (Long hour_id) {
        this.hour_id = hour_id;
    }

    public Long getRestaurant_id() {

        return restaurant_id;
    }

    public void setRestaurant_id(Long restaurant_id_id) {

        this.restaurant_id = restaurant_id;
    }


    public String getDay() {

        return day;
    }

    public void setDy(String day) {

        this.day = day;
    }

    public void setStart_time (Long start_time) {
        this.start_time = start_time;
    }

    public Long getStart_time () {
        return start_time;
    }

    public void setEnd_time (Long end_time) {
        this.end_time = end_time;
    }

    public Long getEnd_time () {
        return end_time;
    }
}
