Given(/^the organisation "([^"]*)" has the following access codes:$/) do |organisation_name, table|
  organisation = Organisation.find_by(name: organisation_name)

  table.raw.first.map do |picture_id|
    picture = create(:picture, id: picture_id, organisation: organisation)
    create(:access_code, picture_id: picture.id, organisation: organisation)
  end
end
