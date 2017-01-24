require '../../lib/pages/AbstractPage'
require 'selenium-webdriver'

class SignInPopUp < AbstractPage

  def initialize (driver)
    super(driver)
  end

  def getHeaderSignIn
    @@driver.find_element()
  end



end