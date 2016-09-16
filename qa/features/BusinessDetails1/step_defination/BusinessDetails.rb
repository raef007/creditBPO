Given "I reach at Business Details 1 screen" do
    @browser.find_element(:css, ".img-responsive").click
    end  

Given "I hit the submit check mark" do 
	@browser.find_element(:id, 'submit-editable').click
	sleep 3
	end


When(/^I click on (.*) data$/) do |companyname|
  @browser.find_element(:xpath, "//span[contains(@data-name, '#{companyname}')]").click
  sleep 4
end

When(/^I type (.*) data into (.*)$/) do |data,textfield|
	if data.include?("blank")
       sleep 1
       @browser.find_element(:xpath, "//input[@name='#{textfield}']").send_keys " "
   else
   	@browser.find_element(:xpath, "//input[@name='#{textfield}']").send_keys data
   end
end

When (/I select (.*) item from (.*)/) do |data,field|
	if data.include?("blank")
      option = Selenium::WebDriver::Support::Select.new(@browser.find_element(:xpath => "//select[@name='#{field}']"))
      option.select_by(:text, "Choose here")
  else
  	option = Selenium::WebDriver::Support::Select.new(@browser.find_element(:xpath => "//select[@name='#{field}']"))
    option.select_by(:text, data)
  end	
end

Then(/^I should get error (.*)$/) do |error|
  find_text(error)
end