# system-wide gems
require 'rubygems'
require 'bundler/setup'
# locally installed by bundler
require 'selenium-webdriver'
require 'cucumber'


# where to test?
base_url = 'http://128.199.203.18'



# Input capabilities
caps = Selenium::WebDriver::Remote::Capabilities.firefox
caps.platform = 'Windows 7'
caps.version = ''
caps['browserName'] = 'Firefox'
caps = Selenium::WebDriver::Remote::Capabilities.chrome
caps.platform = 'Windows 7'
caps.version = ''
caps['browserName'] = 'chrome'


# what to test with?
if ENV['BROWSER_TYPE'] === 'safari'
  browser = Selenium::WebDriver.for :safari
elsif ENV['BROWSER_TYPE'] === 'chrome'
  browser = Selenium::WebDriver.for :chrome, :switches => %w[--test-type --ignore-certificate-errors]
elsif ENV['BROWSER_TYPE'] === 'phantomjs'
  browser = Selenium::WebDriver.for :phantomjs
elsif ENV['BROWSER_TYPE'] === 'saucelabs'
  browser = Selenium::WebDriver.for :remote, :url => "http://venzee:35834820-a51b-4146-beae-bdeef77f172d@ondemand.saucelabs.com:80/wd/hub", :desired_capabilities => caps
else
 browser = Selenium::WebDriver.for :firefox
end

Before do
  @base_url = base_url
  @browser = browser
  @browser.manage.delete_all_cookies
  @browser.manage.window.maximize()#.resize_to(1200, 900)
end

at_exit do
  browser.quit
end
