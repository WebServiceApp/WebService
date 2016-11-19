package com.DeliFood.views;

import com.DeliFood.core.Restaurant;
import io.dropwizard.views.View;

/**
 * Created by Fengjuan on 11/18/16.
 */
public class MenuPageView extends View {


    private Restaurant restaurant;

    public enum Template {
        FREEMARKER("freemarker/menuPage.ftl");

        private String templateName;

        Template(String templateName) {
            this.templateName = templateName;
        }

        public String getTemplateName() {
            return templateName;
        }
    }

    public MenuPageView(MenuPageView.Template template, Restaurant restaurant) {
        super(template.getTemplateName());
        this.restaurant = restaurant;

    }

    public Restaurant getRestaurant() {
        return restaurant;
    }

}
