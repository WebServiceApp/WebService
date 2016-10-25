package com.DeliFood;

import com.DeliFood.views.HomePageView;
import io.dropwizard.Application;
import io.dropwizard.Bundle;
import io.dropwizard.setup.Bootstrap;
import io.dropwizard.setup.Environment;
import com.DeliFood.resources.HomePageResource;
import io.dropwizard.views.ViewBundle;


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
    }



    @Override
    public void run(final WebServiceConfiguration configuration,
                    final Environment environment) {
        final HomePageResource homePageResource = new HomePageResource(
                configuration.getTemplate(),
                configuration.getDefaultName()
        );
        environment.jersey().register(homePageResource);
    }

}
