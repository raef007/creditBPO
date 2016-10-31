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

Then "I delete newly created Risk Assessment" do
sleep 2
	el = @browser.find_element(:xpath => "//a[@data-reload='.reload-ra']")
    @browser.execute_script("arguments[0].click()", el)
	sleep 2
end

Then "I delete newly created Growth Potential" do
sleep 2
	el = @browser.find_element(:xpath => "//a[@data-reload='.reload-rev-growth']")
    @browser.execute_script("arguments[0].click()", el)
	sleep 2
end

Then "I delete newly created Investment Expansion" do
sleep 2
	el = @browser.find_element(:xpath => "//a[@data-reload='.reload-phpm']")
    @browser.execute_script("arguments[0].click()", el)
	sleep 2
end