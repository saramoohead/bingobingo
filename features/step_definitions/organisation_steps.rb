Given(/^the following organisation exists:$/) do |table|
  table.hashes.each do |row|
    create(:organisation, row.merge(name: row["name"],
                                    code: row["code"]))
  end
end

Then(/^the dropdown menu should contain "([^"]*)"$/) do |code|
  expect(page).to have_select("user_organisation_id",
                              with_options: [code])
end
