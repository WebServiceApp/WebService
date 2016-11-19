package com.DeliFood.views;
import java.util.List;
import com.DeliFood.core.Restaurant;
import io.dropwizard.views.View;
import java.lang.String;
/**
 * Created by Fengjuan on 11/14/16.
 */
public class RestaurantPageView extends View{

    private List<Restaurant> restaurants;

    public enum Template {
        FREEMARKER("freemarker/restaurantPage.ftl");

        private String templateName;

        Template(String templateName) {
            this.templateName = templateName;
        }

        public String getTemplateName() {
            return templateName;
        }
    }

    public RestaurantPageView(RestaurantPageView.Template template, List<Restaurant> restaurants) {
        super(template.getTemplateName());
        this.restaurants = restaurants;

    }

    public List<Restaurant> getRestaurants() {
        return restaurants;
    }
}


