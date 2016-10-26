$name
Given "I reach at Business Details 1 screen" do
    #@browser.find_element(:css, ".img-responsive").click
	@browser.find_element(:xpath, "//div[contains(text(),'574 - The Stark Industries')]").click
	#@browser.execute_script("arguments[0].click()", el)
    end  

Given "I hit the submit check mark" do 
	@browser.find_element(:id, 'submit-editable').click
	sleep 3
	end


When(/^I click on (.*) data$/) do |companyname|
  el = @browser.find_element(:xpath, "//span[contains(@data-name, '#{companyname}')]")
  @browser.execute_script("arguments[0].click()", el)
  sleep 4
end

When(/^I type (.*) data into (.*)$/) do |data,textfield|
	if data.include?("blank")
       sleep 1
       @browser.find_element(:xpath, "//input[@name='#{textfield}']").clear
   else
   	@browser.find_element(:xpath, "//input[@name='#{textfield}']").send_keys data
   end
end

When (/I select (.*) item from (.*)/) do |data,field|
sleep 2
	if data.include?("blank")
      option = Selenium::WebDriver::Support::Select.new(@browser.find_element(:xpath => "//select[@name='#{field}']"))
      option.select_by(:text, "Choose here")
  else
  	option = Selenium::WebDriver::Support::Select.new(@browser.find_element(:xpath => "//select[@name='#{field}']"))
    option.select_by(:text, data)
  end	
  sleep 2
end

Then(/^I should get error (.*)$/) do |error|
  find_text(error)
end

Then (/^I click on link (.*)$/) do |link|
el = @browser.find_element(:xpath => "//a[contains(text(),'#{link}')]")
@browser.execute_script("arguments[0].click()", el)
sleep 1
end

Then (/^I enter random (.*) value at field (.*)$/) do |value,field_name|
sleep 1
	if value.include?("Text")
	 value1 = "Text" + rand(10000).to_s
	 option =@browser.find_element(:xpath => "//input[@name='#{field_name}']")
	 option.send_keys value1
	elsif value.include?("Email")
	value2 = "email_address" + rand(10000).to_s + "@yopmail.com"
	option =@browser.find_element(:xpath => "//input[@name='#{field_name}']")
	option.send_keys value2
	elsif value.include?("Name")
	$name = "Name" + rand(10000).to_s
	option = @browser.find_element(:xpath => "//input[@name='#{field_name}']")
	option.send_keys $name
	elsif 
	option = @browser.find_element(:xpath => "//input[@name='#{field_name}']")
	option.send_keys value
	end
sleep 1
end

Then (/^I clicked (.*) button of table (.*)$/) do |button,table|
sleep 1
@browser.find_element(:xpath,"//div[@id='#{table}']//input[@value='#{button}']").click
end

Then "I delete newly created Affiliate" do
sleep 8
	if (name = @browser.find_element(:xpath => "//span[contains(text(),'#{$name}')]"))
	sleep 2
		count = @browser.find_elements(:xpath => "//span[@data-name='affiliates.related_company_name']").size
		multiple = count*9
		el = @browser.find_element(:xpath => "//div[@class='read-only reload-affiliates']//span[#{multiple}]//a")
		@browser.execute_script("arguments[0].click()", el)
	else
	@browser.find_element(:xpath => "//span[@data-name='affiliates.related_company_name']")
	
	end
	sleep 1
end

Then "I confirm delete" do
sleep 2
@browser.find_element(:xpath => "//span[text()='Yes']").click
end

Then "I Verify the validatoin on the page for mendatory fileds" do
sleep 2
@browser.find_element(:xpath,"//form[@id='affiliates-expand-form']//div[@role='alert' and text()='The Company Name field is required']")
@browser.find_element(:xpath,"//form[@id='affiliates-expand-form']//div[@role='alert' and text()='The Company Address field is required']")
@browser.find_element(:xpath,"//form[@id='affiliates-expand-form']//div[@role='alert' and text()='The City field is required']")
@browser.find_element(:xpath,"//form[@id='affiliates-expand-form']//div[@role='alert' and text()='The Province field is required']")
@browser.find_element(:xpath,"//form[@id='affiliates-expand-form']//div[@role='alert' and text()='The Zipcode field is required']")
@browser.find_element(:xpath,"//form[@id='affiliates-expand-form']//div[@role='alert' and text()='The Company Phone field is required']")
@browser.find_element(:xpath,"//form[@id='affiliates-expand-form']//div[@role='alert' and text()='The Email field is required']")
end

Then (/^I choose (.*) file of (.*)$/) do |x,y|
sleep 3
	require 'fileutils'
	path = File.absolute_path("files/#{x}")
	my_dir = Dir[path]
	dest_folder = path[0,2]
	file = dest_folder+"\\#{x}"
	if File.exist?(file)
		#DO NOTHING
	else
		FileUtils.cp(my_dir, dest_folder)
	end
	sleep 2
	f  = dest_folder+"\\#{x}"
	if y.include?("SEC General Information Sheet")
	@browser.find_element(:xpath,"//input[@name='editable-file-uploader']").send_keys f
	elsif y.include?("Utility Billes1")
	@browser.find_element(:xpath,"//div[@id='upload-field-cntr']/div[2]//input[@name='utility_bills[]']").send_keys f
	end
	sleep 5
end

Then "I save uplaoded sheet" do
sleep 2
@browser.find_element(:xpath,"//*[@id='modal-file-uploader']//div[@class='modal-footer']//button[@type='submit']").click
end

