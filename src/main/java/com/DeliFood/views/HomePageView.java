package com.DeliFood.views;
import io.dropwizard.views.View;

public class HomePageView extends View {

    public enum Template {
        FREEMARKER("freemarker/homePage.ftl");

        private String templateName;

        Template(String templateName) {
            this.templateName = templateName;
        }

        public String getTemplateName() {
            return templateName;
        }
    }

    public HomePageView(HomePageView.Template template) {
        super(template.getTemplateName());
    }
}