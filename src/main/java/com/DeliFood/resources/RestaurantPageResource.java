package com.DeliFood.resources;

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
import io.dropwizard.hibernate.UnitOfWork;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

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

    @GET
    @UnitOfWork
    @Produces(MediaType.TEXT_HTML)
    public RestaurantPageView getRestaurantViewFreemarker(@QueryParam("cid") Long cid,
                                                          @QueryParam("fname") String fname,
                                                          @QueryParam("lname") String lname)
    {
        testRestaurants(cid, fname, lname);
        return new RestaurantPageView(RestaurantPageView.Template.FREEMARKER);
    }

    private void testRestaurants(Long cid, String fname, String lname) {
        SessionFactory sessionFactory = new Configuration().configure()
                .buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

//        System.out.println("cid is: " + cid);
//        Customer customer = new Customer(cid, fname, lname);
//        session.save(customer);

        Customer customer = session.get(Customer.class, cid);

        System.out.println("We have got user: " + customer.getFirstName() + " " + customer.getLastName());
        session.getTransaction().commit();
        session.close();
    }


}
