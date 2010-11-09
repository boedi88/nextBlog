Feature: Admin panel
    In order to use the blog
    the admin
    uses the dashboard
    to manage the blog

Background:
    Given I am on the homepage
    Given a user "admin" has "admin" role
    Given a post "Cucu post 1" with status "draft" exists
    Given a post "Cucu post 2" with status "publish" exists
    Given a post "Cucu post 3" with status "draft" exists
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

Scenario: New post
    Given I am on the account page
    Then I should see "New post"
    When I follow "New post"
    Then I should see "New post"
    And I should see "Status"
    And I fill in "post_title" with "cucuPost"
    And I fill in "post_content" with "Cucumber pr0 automatically created this"
    And I select "publish" from "post_status"
    And I press "Create"
    Then I should see "Post was successfully created."
    Then I follow "Dashboard"
    And I should see "cucuPost"
    And I follow "cucuPost" edit link
    And I select "draft" from "post_status"
    And I press "post_submit"
    Then I follow "Dashboard"
    And I should see "cucuPost"
    Then I follow "cucuPost" edit link
    And I should see "Editing post"
    And I select "publish" from "post_status"
    And I press "post_submit"
    And I follow "Blog"
    And I should see "cucuPost"

Scenario: Edit post
    Given I am on the account page
    Then I should see "Edit post"
    When I follow "Edit post"
    Then I should see "Editing post"
    And I should see "Content"
    And I should see "Show | Back"

Scenario: View blog
    Given I am on the account page
    Then I should see "View blog"
    When I follow "View blog"
    Then I should be on the posts page

Scenario: User information
    Given I am on the account page
    Then I should see "Email: admin@gmail.com"
    And I should see "Login: admin"
    And I should see "Login count: "
