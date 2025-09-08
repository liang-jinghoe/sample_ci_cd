package com.example;

import org.junit.Test;
import static org.junit.Assert.*;

import java.beans.Transient;

public class TestHelloWorld
{
    @Test
    public void testMain()
    {
        HelloWorld helloWorld = new HelloWorld();
        assertEquals("Hello", helloWorld.getGreeting());
    }
}