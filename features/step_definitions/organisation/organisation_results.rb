Then(/^I do not see the "([^"]*)" organisation page$/) do |organisation_name|
  expect(page).not_to have_content(organisation_name)
end
