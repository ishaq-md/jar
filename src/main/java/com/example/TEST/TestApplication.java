package com.example.TEST;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.example.TEST.controller.HelloWorldController;

@SpringBootApplication
public class TestApplication {

	public static void main(String[] args) {
		SpringApplication.run(HelloWorldController.class, args);
	}

}
