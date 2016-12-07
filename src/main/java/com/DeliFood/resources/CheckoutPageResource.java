package com.DeliFood.resources;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import com.DeliFood.core.Order;
import com.DeliFood.views.CheckoutPageView;
import io.dropwizard.hibernate.UnitOfWork;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import java.util.concurrent.atomic.AtomicLong;

/**
 * Created by Fengjuan on 12/01/16.
 */
@Path("/checkout")
@Produces(MediaType.APPLICATION_JSON)
public class CheckoutPageResource {

    private final String template;
    private final String defaultName;
    private final AtomicLong counter;


    public CheckoutPageResource(String template, String defaultName)
    {
        this.template = template;
        this.defaultName = defaultName;
        this.counter = new AtomicLong();
    }

    @GET
    @UnitOfWork
    @Produces(MediaType.TEXT_HTML)
    public CheckoutPageView getCheckoutViewFreemarker()
    {

//        int index = 0;
//        for(String key : map.keySet())
//        {
//            if(index < map.size())
//            {
//                List<Menu> tmp = new ArrayList<Menu>();
//                tmp = map.get(key);
//                System.out.println("Category: " + key + ", Value: " + tmp.get(index).getMenuItem());
//                index++;
//            }
//        }

        return new CheckoutPageView(CheckoutPageView.Template.FREEMARKER);
    }

//    private List<Menu> getMenu(Long rid)
//    {
//        SessionFactory sessionFactory = new Configuration().configure()
//                .buildSessionFactory();
//        Session session = sessionFactory.openSession();
//        session.beginTransaction();
//
//        List<Menu> items = session.createCriteria(Menu.class)
//                .add(Restrictions.eq("restaurant_id", rid))
//                .list();
//
//
//        for (Menu item : items) {
//            System.out.println("We have got menu: " + item.getMenuItem() + " " + item.getCategory());
//
//        }
//
//        session.getTransaction().commit();
//        session.close();
//        return items;
//    }

//    @GET
//    @UnitOfWork
//    @Produces(MediaType.TEXT_HTML)
//    public MenuPageView getRestaurantViewFreemarker(@QueryParam("rid") Long rid)
//    {
//        Restaurant restaurant = getRestaurant(rid);
//        return new MenuPageView(MenuPageView.Template.FREEMARKER, restaurant);
//    }
//
//    private Restaurant getRestaurant(Long rid)
//    {
//        SessionFactory sessionFactory = new Configuration().configure()
//                .buildSessionFactory();
//        Session session = sessionFactory.openSession();
//        session.beginTransaction();
//
//
//        Restaurant restaurant = session.get(Restaurant.class, rid);
//
//        session.getTransaction().commit();
//        session.close();
//        return restaurant;
//    }


}
