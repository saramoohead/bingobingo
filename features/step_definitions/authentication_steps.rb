Given(/^I am on the sign up page$/) do
  visit "/sign_up"
end

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

Given(/^the following user exists:$/) do |table|
  table.hashes.each do |row|
    create(:organisation,
           code: row["organisation"])

    organisation = Organisation.find_by(code: row["organisation"])

    create(:user,
           email:        row["email"],
           organisation: organisation,
           password:     row["password"])
  end
end

When(/^I sign in with the following credentials:$/) do |table|
  table.hashes.each do |row|
    login_with(row["email"], row["password"])
  end
end

Given(/^I am logged in as a member of "([^"]*)"$/) do |organisation_code|
  organisation = create(:organisation, code: organisation_code)
  user = create(:user, organisation: organisation)
  login_with(user.email, user.password)
end

Given(/^I am logged in as "([^"]*)" of "([^"]*)"$/) do |user_email, organisation_code|
  organisation = create(:organisation, code: organisation_code)
  user = create(:user, email: user_email, organisation: organisation)
  login_with(user.email, user.password)
end
