package com.example;

import org.junit.Test;
import static org.junit.Assert.*;

public class AppTest {
    @Test
    public void testGreetWithName() {
        App app = new App();
        assertEquals("Hello, John!", app.greet("John"));
    }

    @Test
    public void testGreetWithoutName() {
        App app = new App();
        assertEquals("Hello, World!", app.greet(""));
    }
}
