 When (/^I click (.*) inputBtn$/) do |arg|
  @browser.find_element(:xpath,"//input[@value='#{arg}']").click
  sleep 2
 end
 
 When "I click Agree checkbox" do
  @browser.find_element(:id, "agree").click
 end

 When "I wait 5 seconds" do
  sleep 5
 end
 
 When (/^I click link (.*)/) do |link|
  click_link(link)
  sleep 3
 end
 
 Then(/^I should see text (.*)$/) do |text|
  find_text(text)
 end
 
 Then "The End User License Agreement window should open" do
  @browser.window_handles.size == 3
 end
 
 