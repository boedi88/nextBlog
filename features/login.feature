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
    Then I should be on the account page
    And I should see "Login successful!"
    And I should see "Login"
    And I should see "Dashboard"
    And I should see "My Account"
    And I should see "Logout"
    And I should see "Recent blog posts"
    When I follow "Edit"
    Then I should see "Edit My Account"