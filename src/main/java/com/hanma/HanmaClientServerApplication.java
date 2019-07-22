package com.hanma;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.SpringCloudApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringCloudApplication
@EnableFeignClients
public class HanmaClientServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(HanmaClientServerApplication.class, args);
	}

}
