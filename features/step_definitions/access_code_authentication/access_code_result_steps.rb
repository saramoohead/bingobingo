Then(/^I see the "([^"]*)" organisation page$/) do |school_name|
  expect(page).to have_content I18n.t(:organisation_welcome,
                                      scope:  :organisation,
                                      detail: school_name)
end
