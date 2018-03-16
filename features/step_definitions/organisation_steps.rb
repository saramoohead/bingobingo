Given(/^the following organisation exists:$/) do |table|
  table.hashes.each do |row|
    create(:organisation, row)
  end
end
