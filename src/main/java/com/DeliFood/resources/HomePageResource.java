package com.DeliFood.resources;

import com.DeliFood.views.HomePageView;
import com.codahale.metrics.annotation.Timed;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import java.util.concurrent.atomic.AtomicLong;
import java.util.Optional;
import io.dropwizard.hibernate.UnitOfWork;


@Path("/home")
@Produces(MediaType.APPLICATION_JSON)
public class HomePageResource {
    private final String template;
    private final String defaultName;
    private final AtomicLong counter;


    public HomePageResource(String template, String defaultName) {
        this.template = template;
        this.defaultName = defaultName;
        this.counter = new AtomicLong();
    }

    @GET
    @UnitOfWork
    @Produces(MediaType.TEXT_HTML)
    public HomePageView getPersonViewFreemarker() {
        return new HomePageView(HomePageView.Template.FREEMARKER);
    }

//    @GET
//    public String sayHello(@QueryParam("name") String name) {
//        System.out.println(name);
//        return "Hello " + name;
//    }
}