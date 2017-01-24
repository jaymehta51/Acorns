require 'selenium-webdriver'
require 'rspec'
require 'cucumber'

class SignIn_Steps

  Given(/^User is on RedFin website$/)do

    driver = Selenium::WebDriver.for (:chrome), driver_path: 'C:/Users/jay.mehta/RubymineProjects/chromedriver/chromedriver.exe'
    driver.get 'https://www.redfin.com/'

  end

  When(/^User clicks on button Sign In$/)do

    driver.find_element(:xpath, '//span[text() = "Sign In" and @class = "hoverWrapper"]').click

  end

  Then(/^Sign In pop up should be displayed$/)do

    wait.until { !driver.find_element(:xpath, '//span[text() = "Sign In and @class = "reg-box-header"]').visible? }

  end

  And(/^User can enter valid Email$/)do

    driver.find_element(:xpath, '//input[@name = "emailInput"]').send_keys 'testing1902@yahoo.com'

  end

  And(/^User can enter valid Password$/)do

    driver.find_element(:xpath, '//input[@name = "passwordInput"]').send_keys 'Example9109'

  end

  And(/^User clicks on button Sign In on popup$/)do

    driver.find_element(:xpath, '//button[@type = "submit"]/span[text() = "Sign In"]').click

  end

  Then(/^User can successfully singed on$/)do

    driver.find_element(:xpath, '//button[@type = "submit"]/span[text() = "Sign In"]').click


    if driver.find_element(:xpath, '//input[@placeholder = "City, Address, School, Agent, ZIP"]').visible?
      puts 'successfully signed IN...'
    end

  end

end