Given /^a user with the login "([^"]*)" exists$/ do |login|
  user = User.create do |u|
    u.password = u.password_confirmation = "asdasd"
    u.login = login
    u.email = "admin@gmail.com"
  end
  user.save
end
