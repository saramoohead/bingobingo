def login_with(row)
  visit "/sign_in"
  fill_in "Email", with: row["email"]
  fill_in "Password", with: row["password"]
  click_button "Sign in"
end
