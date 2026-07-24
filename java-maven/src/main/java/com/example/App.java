package com.example;

import com.google.common.base.Strings;
import org.apache.commons.lang3.StringUtils;

public class App {
    public static void main(String[] args) {
        System.out.println("Hello from Java Maven boilerplate!");
        System.out.println("Guava check: " + Strings.isNullOrEmpty(""));
        System.out.println("Commons Lang check: " + StringUtils.isBlank(""));
    }

    public String greet(String name) {
        if (StringUtils.isBlank(name)) {
            return "Hello, World!";
        }
        return "Hello, " + name + "!";
    }
}
