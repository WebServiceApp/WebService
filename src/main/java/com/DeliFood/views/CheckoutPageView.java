package com.DeliFood.views;

import io.dropwizard.views.View;

public class CheckoutPageView extends View {
    public enum Template {
        FREEMARKER("freemarker/checkoutPage.ftl");

        private String templateName;

        Template(String templateName) {
            this.templateName = templateName;
        }

        public String getTemplateName() {
            return templateName;
        }
    }

    public CheckoutPageView(CheckoutPageView.Template template) {
        super(template.getTemplateName());
    }
}
