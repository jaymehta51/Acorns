require 'rspec'
require 'selenium-webdriver'

class AbstractPage

  driver = nil

  def loadDriver (driver)
    @driver = Selenium::WebDriver.for (:chrome), driver_path: 'C:/Users/jay.mehta/RubymineProjects/chromedriver/chromedriver.exe'
  end

  def navigateToApplicationHomePage
    @driver.get 'https://www.redfin.com/'
   # return Homepage.new(@@driver)
  end

  def quit
    driver.quit
  end

end