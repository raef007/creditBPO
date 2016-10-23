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
@browser.find_element(:xpath, "//input[@value='Save']").click
sleep 10
end