require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))


Given /^a user "([^"]*)" has "([^"]*)" role$/ do |login, role|
  user = User.create do |u|
    u.password = u.password_confirmation = "asdasd"
    u.login = login
    u.email = "admin@gmail.com"
    u.role = role
    end
  user.save
end

Given /^a post "([^"]*)" with status "([^"]*)" exists$/ do |title, status|
  Post.create(:title => title, :status => status, :content => "This is the content.")
end

#And I follow "cucuPost" edit link
When /^(?:|I )follow "([^"]*)" edit link$/ do |title|
  post = Post.find_by_title(title)
  visit edit_post_path(post)
end

#And I should see "Cucu post 1" content within "mceEditor"
Then /^(?:|I )should see "([^"]*)" content within "([^"]*)"$/ do |title, selector|
  with_scope(selector) do
    if page.respond_to? :should
      page.should have_content(Post.find_by_title(title).text)
    else
      assert page.has_content?(Post.find_by_title(title).text)
    end
  end
end