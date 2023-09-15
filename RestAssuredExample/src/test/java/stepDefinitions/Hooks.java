package stepDefinitions;


import io.cucumber.java.After;
import io.cucumber.java.AfterAll;
import io.cucumber.java.Before;


public class Hooks {
    @Before
    public void beforeTests() throws InterruptedException {
        Thread.sleep(60000);
    }
}
