require "selenium/webdriver"

def chrome_capabilities(*args)
 Selenium::WebDriver::Remote::Capabilities.chrome(
   chromeOptions: {
     args: args.concat(["window-size=1920,1080"])
   }
 )
end

Capybara.register_driver :chrome do |app|
 Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: chrome_capabilities)
end

Capybara.register_driver :headless_chrome do |app|
 Capybara::Selenium::Driver.new(
   app,
   browser:              :chrome,
   desired_capabilities: chrome_capabilities("headless", "disable-gpu")
 )
end

Capybara.javascript_driver =
 ENV["CAPYBARA_DRIVER"] ? ENV["CAPYBARA_DRIVER"].to_sym : :headless_chrome
