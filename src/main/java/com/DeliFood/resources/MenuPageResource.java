package com.DeliFood.resources;

import com.DeliFood.core.Restaurant;
import com.DeliFood.views.MenuPageView;
import io.dropwizard.hibernate.UnitOfWork;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import java.util.concurrent.atomic.AtomicLong;

/**
 * Created by Fengjuan on 11/14/16.
 */
@Path("/menu")
@Produces(MediaType.APPLICATION_JSON)
public class MenuPageResource {

    private final String template;
    private final String defaultName;
    private final AtomicLong counter;


    public MenuPageResource(String template, String defaultName)
    {
        this.template = template;
        this.defaultName = defaultName;
        this.counter = new AtomicLong();
    }

    @GET
    @UnitOfWork
    @Produces(MediaType.TEXT_HTML)
    public MenuPageView getRestaurantViewFreemarker(@QueryParam("rid") Long rid)
    {
        Restaurant restaurant = getRestaurant(rid);
        return new MenuPageView(MenuPageView.Template.FREEMARKER, restaurant);
    }

    private Restaurant getRestaurant(Long rid)
    {
        SessionFactory sessionFactory = new Configuration().configure()
                .buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();


        Restaurant restaurant = session.get(Restaurant.class, rid);

        session.getTransaction().commit();
        session.close();
        return restaurant;
    }


}
