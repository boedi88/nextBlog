Feature: Admin panel
    In order to use the blog
    the admin
    uses the dashboard
    to manage the blog

Background:
    Given I am on the homepage
    Given a user "admin" has "admin" role
    And I follow "Log In"
    And I fill in "Login" with "admin"
    And I fill in "Password" with "asdasd"
    When I press "Submit"
    Then I should be on the account page

  Scenario: Dashboard
    Given I am on the account page
    Then I should see "Recent blog posts"
    And I should see "Recent drafts"
    And I should see "New post"
    And I should see "View blog"
    And I should see "My Account"
    When I follow "My Account"
    Then I should see "Edit My Account"
    And I should see "Email"

Scenario: Edit post
    Given I am on the account page
    Then I should see edit_post_path
    When I follow edit_post_path
    Then I should see "Editing post"
    And I should see "Status"
    
