 Given "I am on CreditBPO page" do
 @browser.get @base_url
 sleep 2
 end
 
 Given (/I redirect at (.*) page/) do |page|
  @browser.get @base_url#{page}
 end

 Given(/^I am authenticated user$/) do
  @browser.get @base_url#{page}

  if @browser.current_url.include?("dashboard")
  	puts "do nothing"
  else
    sleep 1
    @browser.find_element(:xpath,"//input[@id='email']").send_keys "creditbpo.philippines+trial1@gmail.com"
    @browser.find_element(:xpath,"//input[@id='password']").send_keys "t3stingacc0unt"
    @browser.find_element(:xpath,"//button[text()='Log In']").click
    sleep 2
  end
end
 
 Given "I enter the login email" do
 @browser.find_element(:xpath,"//input[@id='email']").send_keys "creditbpo.philippines+trial1@gmail.com"
 sleep 1
 end
 
 Given "I enter the login password" do
 @browser.find_element(:xpath,"//input[@id='password']").send_keys "t3stingacc0unt"
 sleep 2
 end
 
 Then (/I click (.*) button/) do |arg|
 @browser.find_element(:xpath,"//button[text()='#{arg}']").click
 sleep 5
 end
 
 Then "I am on the dashboard page" do
 sleep 5
 @browser.find_element(:xpath,"//a[text()='New Report']");
 end
 
 Then "I logout" do
 @browser.find_element(:xpath,"//a[text()='Logout']")
 end
 