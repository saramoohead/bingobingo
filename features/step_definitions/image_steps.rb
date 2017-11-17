When(/^I upload the image "([^"]*)"$/) do |arg1|
  within "#image_uploader" do
    click_button "Upload"
  end
end
