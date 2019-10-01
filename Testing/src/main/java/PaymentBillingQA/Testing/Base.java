package PaymentBillingQA.Testing;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.Platform;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

public class Base {
	//public WebDriver Driver = null;
	
	public RemoteWebDriver Driver;

	public WebDriver getDriver() {

		DesiredCapabilities Firefoxcapabilities = DesiredCapabilities.firefox();
		Firefoxcapabilities.setCapability("version", "");
		Firefoxcapabilities.setPlatform(Platform.LINUX);
		try {
			Driver = new RemoteWebDriver(new URL("http://localhost:5555/wd/hub"), Firefoxcapabilities);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Driver.manage().window().maximize();
		Driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		
		// To open URL
		//String url = "http://localhost:8081/PaymentBilling/";
		
		String url = "http://10.16.33.178:9090/PaymentBilling/";
		//String url = "http://HMECL001767:9090/PaymentBilling/";
		//String url = "http://10.0.75.1:9090/PaymentBilling/";
		
		Driver.get(url);
		WebDriverWait wait = new WebDriverWait(Driver, 20);

		return Driver;
		
		/*
		// Without Grid - Normal approach with Chrome driver
		System.setProperty("webdriver.chrome.driver", System.getProperty("user.dir") + "\\Libs\\chromedriver.exe");
		Driver = new ChromeDriver();

		// To maximize browser
		Driver.manage().window().maximize();

		// Implicit wait
		Driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);

		// To open URL
		//String url = "http://localhost:8081/PaymentBilling/";
		String url = "http://10.16.33.178:9090/PaymentBilling/";

		Driver.get(url);

		return driver;
		*/
		 
	}

}
