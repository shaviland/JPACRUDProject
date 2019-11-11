package com.skilldistillery.doctorwho;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class DoctorWhoDatabaseApplication extends SpringBootServletInitializer{
	@Override
	  protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	    return application.sources(DoctorWhoDatabaseApplication.class);
	  }

	public static void main(String[] args) {
		SpringApplication.run(DoctorWhoDatabaseApplication.class, args);
	}

}
