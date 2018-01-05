# fills in forms using Capybara with data from Cucumber
module FormHelpers
  def fill_form(table)
    table.raw.each do |field, value|
      fill_in field, with: value
    end
  end
end

World(FormHelpers)
