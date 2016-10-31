Then "I reach at Business Details 2 screen" do
 sleep 2
 @browser.find_element(:xpath,"//a[contains(text(),'Business Details ||')]").click
 sleep 1
 if (@browser.find_element(:xpath => "//*[text()='Remember!']"))
	 @browser.find_element(:xpath => "//input[@name='confirm-tab-msg']").click
	 sleep 1
	 @browser.find_element(:xpath => "//*[@id='modal-next-tab-continue']").click
	 sleep 3
 else
 # Do nothing
 end
end

Then(/^I delete one item in (.*)$/) do |panel|
	@browser.find_element(:xpath, "//div[@id='#{panel}']//a[@class='navbar-link delete-info']").click
end

Then "I confirm the delete" do
sleep 2
@browser.find_element(:xpath => "//span[text()='Yes']").click
sleep 3
end