Feature: Picture
    As a blog owner
    I can add pictures to my posts
    To make them more interesting

Background:
    Given I am on the homepage
    And a user "admin" has "admin" role
    And a post "Cucu post 1" with status "draft" exists
    And a post "Cucu post 2" with status "publish" exists
    And a post "Cucu post 3" with status "draft" exists
    And I follow "Log In"
    And I fill in "Login" with "admin"
    And I fill in "Password" with "asdasd"
    When I press "Submit"
    Then I should be on the account page

Scenario: Add a picture
    Given I am on the account page
    And I follow "Cucu post 1" edit link
    When I attach the file "/home/regac/Pictures/Simple/fall.png" to "post_photo"
    And I press "Update"
    Then I should see "Post was successfully updated."