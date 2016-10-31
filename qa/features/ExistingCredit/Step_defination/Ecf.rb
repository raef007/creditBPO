Then "I reach at Existing Credit Facilities screen" do
sleep 2
@browser.find_element(:xpath,"//a[contains(text(),'Existing Credit Facilities')]").click
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

Then (/^I click and wait on link (.*)$/) do |link|
el = @browser.find_element(:xpath,"//a[contains(text(),'#{link}')]")
@browser.execute_script("arguments[0].click()", el)
sleep 5
end

Then "I save Pop Modal form" do
sleep 2
el = @browser.find_element(:xpath,"//*[@id='modal-add-info']//div[@class='modal-footer']//button[@type='submit']")
@browser.execute_script("arguments[0].click()", el)
end