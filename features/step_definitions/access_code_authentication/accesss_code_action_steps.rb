When(/^I enter the following access codes:$/) do |table|
  access_code = table.raw.first.join

  fill_in I18n.t(:label_for_form_code_entry, scope: :access_codes), with: access_code
  click_button I18n.t(:label_for_submit_button, scope: :access_codes)
end
