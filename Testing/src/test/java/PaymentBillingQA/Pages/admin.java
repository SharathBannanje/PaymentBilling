package PaymentBillingQA.Pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

import PaymentBillingQA.Testing.Base;
//import PaymentBillingQA.Testing.GenericFunctions;

public class admin extends Base {
	public WebDriver driver;

	public admin(WebDriver driver) {
		this.driver = driver;
	}

	@FindBy(how = How.XPATH, using = "//*[@id=\"main\"]/center/b/a/font")
	WebElement admin_link;

	@FindBy(how = How.XPATH, using = "//*[@id=\'box\']/form/table/tbody/tr[3]/td[2]/input")
	WebElement adminName;
	
	@FindBy(how = How.XPATH, using = "//*[@id='box']/form/table/tbody/tr[5]/td[2]/input")
	WebElement adminPwd;
		
	@FindBy(how = How.XPATH, using = "//*[@id='box']/form/table/tbody/tr[7]/td[2]/input")
	WebElement adminSignIn;

	// This method to click AdminPage Link
	public void clickAdminPageLink() {
		try {
			admin_link.click();
			//Reporter.log("Admin Page link clicked | ");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// This method to set Admin Name
	public void setAdminName() {
		try {
			adminName.clear();
			adminName.sendKeys("admin");
			//Reporter.log("Admin name entered | ");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// This method to set Admin Name
	public void setAdminPwd() {
		try {
			adminPwd.clear();
			adminPwd.sendKeys("admin");
			//Reporter.log("Admin pwd entered | ");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// This method to click on SignIn button
	public void clickSignIn() {
		try {
			adminSignIn.click();
			//Reporter.log("Admin SignIn button clicked | ");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
