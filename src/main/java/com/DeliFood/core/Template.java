package com.DeliFood.core;

import java.util.Optional;

import static java.lang.String.format;

public class Template {
    private String template;
    private String defaultName;

    public Template(String template, String defaultName) {
        this.template = template;
        this.defaultName = defaultName;
    }

    public String render(Optional<String> name) {
        return format(template, name.orElse(defaultName));
    }
}
