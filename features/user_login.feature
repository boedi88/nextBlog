Feature: User login
  In order to access the site
  the user
  wants to login with login and password

  Background:
    Given a user with the login "admin" exists

  Scenario: User login
    Given I go to the homepage
    And I follow "Log In"
    And I fill in "Login" with "admin"
    And I fill in "Password" with "asdasd"
    When I press "Submit"
    Then I should be on the posts page
    And I should see "Login successful!"
    And I should see "Login"
    When I follow "My Account"
    Then I should see "Edit My Account"
