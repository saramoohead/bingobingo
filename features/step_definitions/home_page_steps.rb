Then(/^the menu should be exactly: "([^"]*)"$/) do |string|
  within("#menu_home") do
    menu = page.all("a").map(&:text).join(", ")
    expect(menu).to eq string
  end
end
