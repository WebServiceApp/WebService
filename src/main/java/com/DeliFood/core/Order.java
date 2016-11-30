package com.DeliFood.core;




import java.io.Serializable;


import javax.persistence.*;

/**
 * Created by pengfeizhu on 11/20/16.
 */


@Entity
@Table (name = "O")
public class Order implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long order_id;

    private Long restaurant_id;
    private Long customer_id;

    private Long order_time;
    private Long estimated_time;
    private Float price;


    public Order() {

    }

    public Order(Long restaurant_id, Long customeran_id, Long order_id) {
        this.restaurant_id = restaurant_id;
        this.customer_id = customeran_id;
        this.order_id = order_id;
    }

    public void setRestaurant_id(Long restaurant_id) {

        this.restaurant_id = restaurant_id;
    }

    public Long getRestaurant_id() {

        return restaurant_id;
    }

    public void setCustomeran_id (Long Customer_id) {

        this.customer_id = customer_id;
    }

    public Long getCustomer_id() {

        return customer_id;
    }

    public void setPrice (Float price) {

        this.price = price;
    }

    public Float getPrice() {

        return price;
    }

    public void setOrder_id (Long order_id) {

        this.order_id = order_id;
    }

    public Long getOrder_id() {

        return order_id;
    }

    public void setOrder_time (Long order_time) {

        this.order_time = order_time;
    }

    public Long getOrder_time() {
        return order_time;
    }

    public void setEstimated_time(Long estimated_time) {

        this.estimated_time = estimated_time;
    }

    public Long getEstimated_time() {

        return estimated_time;
    }


}
