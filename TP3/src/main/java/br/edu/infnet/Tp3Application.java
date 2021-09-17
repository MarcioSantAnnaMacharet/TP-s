package br.edu.infnet;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("br.edu.infnet")
public class Tp3Application {

	public static void main(String[] args) {
		SpringApplication.run(Tp3Application.class, args);
	}
}
