package com.carrinho.app;

import org.openqa.selenium.WebDriver;
import org.springframework.boot.test.context.SpringBootTest;

import io.cucumber.java.After;
import io.cucumber.java.Before;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.DEFINED_PORT)
public class CarrinhoStepDefinitions {

	private WebDriver firefoxDriver;
	
	@Before
	public void setUp() {
		BeforeSetupHelper.setUpFirefoxDriver();
		this.firefoxDriver = BeforeSetupHelper.getFirefoxWebdriver();
	}
	
	@After
	public void closeDriver(){
		this.firefoxDriver.close();
	}

}
