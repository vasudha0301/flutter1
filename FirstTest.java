import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;

public class FirstTest {
    public static void main(String[] args) {
        WebDriver driver = new ChromeDriver();

        try {
            // Test 1: Page title
            driver.get("https://the-internet.herokuapp.com/");

            System.out.println(driver.getTitle().equals("The Internet")
                ? "PASS: Page title" : "FAIL: Page title");

            // Test 2: Valid login
            driver.get("https://the-internet.herokuapp.com/login");

            driver.findElement(By.id("username")).sendKeys("tomsmith");
            driver.findElement(By.id("password")).sendKeys("SuperSecretPassword!");
            driver.findElement(By.cssSelector("button[type='submit']")).click();

            System.out.println(driver.getPageSource().contains("You logged into a secure area!")
                ? "PASS: Valid login" : "FAIL: Valid login");

            // Test 3: Invalid login
            driver.get("https://the-internet.herokuapp.com/login");

            driver.findElement(By.id("username")).sendKeys("wronguser");
            driver.findElement(By.id("password")).sendKeys("wrongpassword");
            driver.findElement(By.cssSelector("button[type='submit']")).click();

            System.out.println(driver.getPageSource().contains("Your username is invalid!")
                ? "PASS: Invalid login" : "FAIL: Invalid login");

        } finally {
            driver.quit();
        }
    }
}