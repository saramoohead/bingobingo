Given(/^I am on the Pictures page$/) do
  visit pictures_path
end

Given("I (choose|have chosen) the image {filename} for uploading") do |filename|
  attach_file("picture_square_image", Rails.root.join("fixtures", "files", filename))
end

When("I fill in the image description form with the following information:") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end

When("I choose to upload") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see the following images:") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the image "([^"]*)" in the preview$/) do |filename|
  expect(page).to have_xpath("//img[contains(@src,\"#{filename}\")]")
end
