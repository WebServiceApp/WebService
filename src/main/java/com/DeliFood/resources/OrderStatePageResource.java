package com.DeliFood.resources;

import com.DeliFood.views.OrderStatePageView;
import com.codahale.metrics.annotation.Timed;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.*;
import java.util.concurrent.atomic.AtomicLong;
import java.util.Optional;
import io.dropwizard.hibernate.UnitOfWork;


@Path("/orderState")
@Produces(MediaType.APPLICATION_JSON)
public class OrderStatePageResource
{
    private final String template;
    private final String defaultName;
    private final AtomicLong counter;


    public OrderStatePageResource(String template, String defaultName)
    {
        this.template = template;
        this.defaultName = defaultName;
        this.counter = new AtomicLong();
    }

    @GET
    @UnitOfWork
    @Produces(MediaType.TEXT_HTML)
    public OrderStatePageView getOrderStatePageViewFreemarker()
    {
        return new OrderStatePageView(OrderStatePageView.Template.FREEMARKER);
    }

//    @GET
//    public String sayHello(@QueryParam("name") String name) {
//        System.out.println(name);
//        return "Hello " + name;
//    }
}