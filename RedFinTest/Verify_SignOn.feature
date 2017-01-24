Feature: Completing the Sign On Process

  Scenario: Verify that user signed in with valid user name and password
    Given User is on RedFin website
    When User clicks on button Sign In
    Then Sign In pop up should be displayed
    And User can enter valid Email
    And User can enter valid Password
    And User clicks on button Sign In on popup
    Then User can successfully singed on
