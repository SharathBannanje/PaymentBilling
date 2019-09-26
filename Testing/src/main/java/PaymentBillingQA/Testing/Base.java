package PaymentBillingQA.Testing;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;


public class Base {
	public WebDriver driver = null;

	public WebDriver getDriver() {
		// driver = new FirefoxDriver();

		System.setProperty("webdriver.chrome.driver", System.getProperty("user.dir") + "\\Libs\\chromedriver.exe");
		driver = new ChromeDriver();

		// To maximize browser
		driver.manage().window().maximize();

		// Implicit wait
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);

		// To open URL
		String url = "http://localhost:8081/PaymentBilling/";
		//String url = "http://10.16.33.178:9090/PaymentBilling/";
		driver.get(url);

		return driver;
	}

}
