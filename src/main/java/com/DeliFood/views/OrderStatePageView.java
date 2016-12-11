package com.DeliFood.views;
import io.dropwizard.views.View;

public class OrderStatePageView extends View {

    public enum Template {
        FREEMARKER("freemarker/orderStatePage.ftl");

        private String templateName;

        Template(String templateName) {
            this.templateName = templateName;
        }

        public String getTemplateName() {
            return templateName;
        }
    }

    public OrderStatePageView(OrderStatePageView.Template template) {
        super(template.getTemplateName());
    }
}