Given(/^I am on the Pictures page$/) do
  visit pictures_path
end

Then(/^I should see the image "([^"]*)" in the preview$/) do |filename|
  expect(page).to have_xpath("//img[contains(@src,\"#{filename}\")]")
end

Given(/^I (?:choose|have chosen) the image "([^"]*)" for uploading$/) do |filename|
  attach_file("picture_square_image", Rails.root.join("fixtures", "files", filename))
end

When(/^I fill in the image description form with the following information:$/) do |table|
  fill_form(table)
end

When(/^I have uploaded the following image:$/) do |table|
  user = User.last
  table.hashes.each do |row|
    create(:picture,
           user:              user,
           name:              row["name"],
           short_description: row["short_description"],
           square_image:      row["file_name"])
  end
end

Then(/^I should see the following image details:$/) do |table|
  table.raw.each do |_attribute, value|
    expect(page).to have_content(value)
  end
end
