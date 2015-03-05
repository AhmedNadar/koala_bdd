Feature: Reader Registration
  To register in application readers goes to register form, which cosists of only from email, password and password confirmation field and a button. After registration readers are loggd in automaticly and ready to use our app.

 Scenario: Readers register successfully via register form.
    Given I am aguest
    When I fill registeration form with valid data 
    Then I should be registered in application
    And  I should be logged in

