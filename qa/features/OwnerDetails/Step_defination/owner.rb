Then "I reach at Owner Details screen" do
sleep 2
@browser.find_element(:xpath,"//a[contains(text(),'Owner Details')]").click
sleep 1
 if (@browser.find_element(:xpath => "//*[text()='Remember!']"))
 @browser.find_element(:xpath => "//input[@name='confirm-tab-msg']").click
 sleep 1
 @browser.find_element(:xpath => "//*[@id='modal-next-tab-continue']").click
 sleep 2
 else
 # Do nothing
 end
end

Then "I save Owner details" do
el = @browser.find_element(:xpath, "//input[@value='Save']")
@browser.execute_script("arguments[0].click()", el)
sleep 10
end

Then "I click Owner's name" do
el = @browser.find_element(:xpath, "//a[@data-parent='#accordion']")
@browser.execute_script("arguments[0].click()", el)
sleep 10
end

Then (/^on slider I click button (.*)$/) do |link|
el = @browser.find_element(:xpath,"//button[contains(text(),'#{link}')]")
@browser.execute_script("arguments[0].click()", el)
sleep 5
end

Then (/^I delete record (.*)$/) do |reload|
sleep 2
	el = @browser.find_element(:xpath => "//a[@data-reload='.#{reload}']")
    @browser.execute_script("arguments[0].click()", el)
	sleep 1
end

Then (/^I click delete owner details (.*)$/) do |delete_link|
sleep 2
	el = @browser.find_element(:xpath => "//a[@class='navbar-link delete-info #{delete_link}']")
    @browser.execute_script("arguments[0].click()", el)
	sleep 1
end