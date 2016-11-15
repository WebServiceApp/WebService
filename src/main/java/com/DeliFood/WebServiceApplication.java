package com.DeliFood;

import com.DeliFood.views.HomePageView;
import io.dropwizard.Application;
import io.dropwizard.*;
import io.dropwizard.setup.Bootstrap;
import io.dropwizard.setup.Environment;
import com.DeliFood.resources.HomePageResource;
import com.DeliFood.resources.RestaurantPageResource;
import io.dropwizard.views.ViewBundle;
import io.dropwizard.Bundle;
import io.dropwizard.assets.AssetsBundle;

import javax.jws.WebService;


public class WebServiceApplication extends Application<WebServiceConfiguration> {

    public static void main(final String[] args) throws Exception {
        new WebServiceApplication().run(args);
    }

    @Override
    public String getName() {
        return "WebService";
    }

    @Override
    public void initialize(final Bootstrap<WebServiceConfiguration> bootstrap) {
        // TODO: application initialization
        bootstrap.addBundle(new ViewBundle());
        bootstrap.addBundle(new AssetsBundle());

    }



    @Override
    public void run(final WebServiceConfiguration configuration,
                    final Environment environment)
    {
        final HomePageResource homePageResource = new HomePageResource(
                configuration.getTemplate(),
                configuration.getDefaultName()
        );

        final RestaurantPageResource restaurantPageResource = new RestaurantPageResource(
                configuration.getTemplate(),
                configuration.getDefaultName()
        );
        environment.jersey().register(homePageResource);
        environment.jersey().register(restaurantPageResource);
    }

}
