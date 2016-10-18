Then "I reach at Key managers screen" do
sleep 2
@browser.find_element(:xpath,"//a[contains(text(),'Key Managers')]").click
sleep 1
 if (@browser.find_element(:xpath => "//*[text()='Remember!']"))
 @browser.find_element(:xpath => "//input[@name='confirm-tab-msg']").click
 sleep 1
 @browser.find_element(:xpath => "//*[@id='modal-next-tab-continue']").click
 else
 # Do nothing
 end
end

Then (/^User choose (.*) button$/) do |button|
@browser.find_element(:xpath => "//input[@value='#{button}']").click
end
