package com.DeliFood.views;

import com.DeliFood.core.Menu;
import com.DeliFood.core.Restaurant;
import io.dropwizard.views.View;
import java.lang.String;
//import java.util.HashMap;
import java.util.List;

/**
 * Created by Fengjuan on 11/18/16.
 */
public class MenuPageView extends View {


//    private List<Menu> menus;
    //private HashMap<String, List<Menu>> map;
    private List<Menu> menus;
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

    public MenuPageView(MenuPageView.Template template, List<Menu> menus){//HashMap<String,List<Menu>> map) {
        super(template.getTemplateName());
        this.menus = menus;

    }



    //public HashMap<String, List<Menu>> getMenus() {
    public List<Menu> getMenus() {
        return menus;
    }

}
