require 'rspec'
require 'selenium-webdriver'
require 'capybara'


class Sample

  driver = Selenium::WebDriver.for (:chrome), driver_path: 'C:/Users/jay.mehta/RubymineProjects/chromedriver/chromedriver.exe'
  driver.get 'https://www.redfin.com/'

  driver.find_element(:xpath, '//span[text() = "Sign In" and @class = "hoverWrapper"]').click

  sleep 10

  #wait.until{driver.find_element(:xpath, '//span[text() = "Sign In and @class = "reg-box-header"]').displayed? }
  #wait.until { !driver.find_element(:xpath, '//span[text() = "Sign In and @class = "reg-box-header"]').visible? }

  driver.find_element(:xpath, '//input[@name = "emailInput"]').send_keys 'testing1902@yahoo.com'
  driver.find_element(:xpath, '//input[@name = "passwordInput"]').send_keys 'Example9109'

  driver.find_element(:xpath, '//button[@type = "submit"]/span[text() = "Sign In"]').click

  sleep 10

  puts 'Passed...'


end