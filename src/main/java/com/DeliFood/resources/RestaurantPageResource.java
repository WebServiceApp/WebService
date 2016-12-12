package com.DeliFood.resources;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.DeliFood.core.Restaurant;
import com.DeliFood.views.RestaurantPageView;
import com.codahale.metrics.annotation.Timed;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.*;
import javax.ws.rs.*;
import java.util.concurrent.atomic.AtomicLong;
import java.util.Optional;
import java.util.stream.Collectors;

import com.google.common.collect.Lists;
import io.dropwizard.hibernate.UnitOfWork;


import org.hibernate.MultiIdentifierLoadAccess;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


import com.DeliFood.core.Customer;

/**
 * Created by Fengjuan on 11/14/16.
 */
@Path("/Restaurant")
@Produces(MediaType.APPLICATION_JSON)
public class RestaurantPageResource {

    private final String template;
    private final String defaultName;
    private final AtomicLong counter;


    public RestaurantPageResource(String template, String defaultName)
    {
        this.template = template;
        this.defaultName = defaultName;
        this.counter = new AtomicLong();
    }

    @POST
    @UnitOfWork
    public void uploadNewRestaurant(@FormParam("name") String name, @FormParam("type") String type ) {
        String test = name;
        String test2 = type;
    }

    @GET
    @UnitOfWork
    @Produces(MediaType.TEXT_HTML)
    public RestaurantPageView getRestaurantsViewFreemarker()
    {
        List<Restaurant> restaurants = getRestaurants();
        return new RestaurantPageView(RestaurantPageView.Template.FREEMARKER, restaurants);
    }

    private List<Restaurant> getRestaurants()
    {
        SessionFactory sessionFactory = new Configuration().configure()
                .buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

//        System.out.println("cid is: " + cid);
//        Customer customer = new Customer(cid, fname, lname);
//        session.save(customer);

        //Customer customer = session.get(Customer.class, cid);

//        Restaurant restaurant = new Restaurant(rid, name, phone);
//        session.save(restaurant);


//        MultiIdentifierLoadAccess<Restaurant> restaurants = session.byMultipleIds(Restaurant.class);
//        restaurants.multiLoad(restaurants(100));

        List<Restaurant> restaurants = session.createCriteria(Restaurant.class).list();
//
//        for (Restaurant restaurant : restaurants) {
//            System.out.println("We have got restaurant: " + restaurant.getName() + " " + restaurant.getPhone());
//            System.out.println(restaurant.getImage());
//        }

        session.getTransaction().commit();
        session.close();
        return restaurants;
    }

    @Path("/{filter}")
    @GET
    @UnitOfWork
    @Produces(MediaType.TEXT_HTML)
    public RestaurantPageView getRestaurantsViewFreemarker(@PathParam("filter") String filter)
    {
        List<Restaurant> restaurants = getRestaurantByFilter( filter );
        return new RestaurantPageView(RestaurantPageView.Template.FREEMARKER, restaurants);
    }

    private List<Restaurant> getRestaurantByFilter( String filter) {
        List<Restaurant> original = getRestaurants();
        List<Restaurant> restaurants = original.stream().filter( restaurant -> restaurant.getCategory().equalsIgnoreCase(filter)).collect(Collectors.toList());

        if ( restaurants.isEmpty() ) {
            restaurants = original.stream().filter( restaurant -> restaurant.getName().equalsIgnoreCase(filter)).collect(Collectors.toList());
        }
        return restaurants;
    }
}
