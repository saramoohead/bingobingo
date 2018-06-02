When(/^I sign up with the following credentials:$/) do |table|
  within(".new_user") do
    table.hashes.each do |row|
      fill_in "Email", with: row["email"]
      fill_in "Organisation name", with: row["name"]
      fill_in "Password", with: row["password"]
      click_on "Sign up"
    end
  end
end

Given(/^the following admin user exists:$/) do |table|
  table.hashes.each do |row|
    organisation = create(:organisation, name: row["organisation"])
    create(:user,
           email:        row["email"],
           organisation: organisation,
           password:     row["password"])
  end
end

When(/^I sign in with the following credentials:$/) do |table|
  table.hashes.each do |row|
    login_as_admin(row["email"], row["password"])
  end
end

Given(/^I am logged in as "([^"]*)" of "([^"]*)"$/) do |user_email, organisation_name|
  organisation = create(:organisation, name: organisation_name)
  user = create(:user, email: user_email, organisation: organisation)
  login_as_admin(user.email, user.password)
end

When(/^I sign out$/) do
  click_on "Sign out"
end
