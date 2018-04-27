Given(/^the following organisation exists:$/) do |table|
  table.hashes.each do |row|
    create(:organisation, row)
  end
end

When(/^I visit the "([^"]*)" organisation page$/) do |organisation|
  organisation = Organisation.find_by(name: organisation)
  visit "/organisations/#{organisation.id}"
end
