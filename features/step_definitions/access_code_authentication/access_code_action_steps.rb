When(/^I enter the following access codes:$/) do |table|
  access_code = table.raw.first.join

  fill_in I18n.t(:label_for_form_code_entry, scope: :access_codes), with: access_code
  click_button I18n.t(:label_for_submit_button, scope: :access_codes)
end

Given(/^I am logged in with the access code for "([^"]*)"$/) do |organisation_name|
  organisation = create(:organisation, name: organisation_name)
  access_codes = create_list(:access_code, 5, organisation: organisation)

  access_organisation(organisation: organisation, access_codes: access_codes)
end
