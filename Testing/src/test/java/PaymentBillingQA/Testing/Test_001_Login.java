package PaymentBillingQA.Testing;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;
import PaymentBillingQA.Pages.admin;

public class Test_001_Login {
	public WebDriver driver;
	
	@Before
	public void beforeTest() {
		Base b = new Base();
		driver = b.getDriver();
		System.out.println("BeforeTest called..!");
	}

	@Test
	// TC_001() : Login to the application as admin
	public void TC_001() throws Exception {
		
		// adminPage PageFactory instance created
		admin adminpage = PageFactory.initElements(driver, admin.class);
				
		Thread.sleep(2000);
		adminpage.clickAdminPageLink();
		Thread.sleep(1000);
		adminpage.setAdminName();
		adminpage.setAdminPwd();
		adminpage.clickSignIn();
		//driver.close();
		System.out.println("Test case run completed..!");
	}
	
	@After
	public void afterTest() {
		driver.quit();
		System.out.println("AfterTest called..!");
	}

}
