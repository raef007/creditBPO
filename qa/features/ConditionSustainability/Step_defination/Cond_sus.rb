Then "I reach at Condition and Sustainability screen" do
sleep 2
@browser.find_element(:xpath,"//a[contains(text(),'Condition and Sustainability')]").click
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

Then (/^User choose (.*) button$/) do |button|
@browser.find_element(:xpath => "//input[@value='#{button}']").click
end

Then "I delete newly created Risk Assessment" do
sleep 2
	@browser.find_element(:xpath => "//a[@data-reload='.reload-ra']").click
	sleep 1
end

Then "I delete newly created Growth Potential" do
sleep 2
	@browser.find_element(:xpath => "//a[@data-reload='.reload-rev-growth']").click
	sleep 1
end

Then "I delete newly created Investment Expansion" do
sleep 2
	@browser.find_element(:xpath => "//a[@data-reload='.reload-phpm']").click
	sleep 1
end