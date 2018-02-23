Given(/^the following organisation exists:$/) do |table|
  table.hashes.each do |row|
    create(:organisation, row)
  end
end

When(/^I visit invitation link "([^"]*)"$/) do |join_organisation_link|
  visit join_organisation_link
end
