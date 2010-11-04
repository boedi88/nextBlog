Given /^a user "([^"]*)" has "([^"]*)" role$/ do |login, role|
  user = User.create do |u|
    u.password = u.password_confirmation = "asdasd"
    u.login = login
    u.email = "admin@gmail.com"
    u.role = role
    end
  user.save
end