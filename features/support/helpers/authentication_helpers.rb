def login_with(email, password)
  visit "/sign_in"
  fill_in "Email", with: email
  fill_in "Password", with: password
  click_button "Sign in"
end
