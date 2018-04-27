Given(/^the organisation "([^"]*)" has the following access codes:$/) do |organisation, table|
  system_organisation = Organisation.find_by(name: organisation)

  system_organisation.access_codes = table.raw.first.map do |access_code_id|
    create(:access_code, picture_id: access_code_id, organisation: system_organisation)
  end
end
