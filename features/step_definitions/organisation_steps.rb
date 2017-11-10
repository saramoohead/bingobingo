Given(/^the following organisation exists:$/) do |table|
  table.hashes.each do |row|
    create(:organisation, row.merge(name: row["name"],
                                    code: row["code"]))
  end
end

Then(/^the dropdown menu should contain "([^"]*)"$/) do |code|
  visit "/sign_up"
  expect(page).to have_select("user_organisation_id", selected: code)
end
