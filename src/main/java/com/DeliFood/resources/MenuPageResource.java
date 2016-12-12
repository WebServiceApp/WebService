package com.DeliFood.resources;
import java.util.ArrayList;
//import java.util.HashMap;
import java.util.List;
import com.DeliFood.core.Menu;
import com.DeliFood.views.MenuPageView;
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
    public MenuPageView getMenuViewFreemarker(@QueryParam("rid") Long rid)
    {
        List<Menu> items= getMenu(rid);
        List<Menu> menus = new ArrayList<Menu>();
        for (int i =0; i < items.size(); i++){
            menus.add(i, items.get(i));
        }
        //HashMap<String, List<Menu>> map = new HashMap<String, List<Menu>>();
        //List<Menu> menuList = new ArrayList<Menu>();
        //List<String> menus = new ArrayList<Menu>();
        /*for (int i = 0; i < items.size(); i++){
            int a = items.get(i).getMenu_id();
            menuList.add(a, items.get(i));

        }*/
        /*int i = 0;
        while(i < items.size())
        {
            if(map.containsKey(items.get(i).getCategory()))
            {
                map.get(items.get(i).getCategory()).add(items.get(i));
            }
            else {
                List<Menu> res = new ArrayList<Menu>();
                res.add(items.get(i));
                map.put(items.get(i).getCategory(),res);
            }
            i++;
        }*/
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

        return new MenuPageView(MenuPageView.Template.FREEMARKER, menus);
    }

    private List<Menu> getMenu(Long rid)
    {
        SessionFactory sessionFactory = new Configuration().configure()
                .buildSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        List<Menu> menus = session.createCriteria(Menu.class)
                .add(Restrictions.eq("restaurant_id", rid))
                .list();


        /*for (Menu menu : menus) {
            System.out.println("We have got menu: " + menu.getMenuItem() + " " + menu.getCategory());

        }*/
        int i = 1;
        for (Menu menu : menus) {
            System.out.println("We have got menu: " + menu.getMenu_id() + "at " + i);
            i++;

        }

        session.getTransaction().commit();
        session.close();
        return menus;
    }

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
