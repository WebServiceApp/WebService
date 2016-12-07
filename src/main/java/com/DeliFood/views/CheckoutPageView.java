package com.DeliFood.views;

import com.DeliFood.core.Menu;
import io.dropwizard.views.View;
import java.lang.String;
import java.util.HashMap;
import java.util.List;
/**
 * Created by Fengjuan on 12/1/16.
 */
public class CheckoutPageView extends View {


    //    private List<Menu> menus;
    //private HashMap<String, List<Menu>> map;

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

//    public HashMap<String, List<Menu>> getMenus() {
//        return map;
//    }

}
