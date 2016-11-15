package com.DeliFood.views;
import io.dropwizard.views.View;
import java.lang.String;
/**
 * Created by Fengjuan on 11/14/16.
 */
public class RestaurantPageView extends View{

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

    public RestaurantPageView(RestaurantPageView.Template template) {

        super(template.getTemplateName());
    }
}


