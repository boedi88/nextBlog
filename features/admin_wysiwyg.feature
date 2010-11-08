Feature: WYSIWYG
    In order to make the blog good looking
    the admin
    makes the posts in a WYSIWYG editor

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

Scenario: WYSIWYG Edit
    Given I am on the account page
    And I follow "Cucu post 1" edit link
    Then I should see "mceEditor"

Scenario: WYSIWYG New
    Given I am on the account page
    And I follow "New post"
    Then I should see "mceEditor"