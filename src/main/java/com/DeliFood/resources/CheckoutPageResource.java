package com.DeliFood.resources;

import com.DeliFood.core.Template;
import com.DeliFood.views.CheckoutPageView;
import io.dropwizard.hibernate.UnitOfWork;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/checkout")
@Produces(MediaType.APPLICATION_JSON)
public class CheckoutPageResource {
    private Template template;

    public CheckoutPageResource(Template template) {
        this.template = template;
    }

    @GET
    @UnitOfWork
    @Produces(MediaType.TEXT_HTML)
    public CheckoutPageView getCheckoutViewFreemarker() {
        return new CheckoutPageView(CheckoutPageView.Template.FREEMARKER);
    }
}
