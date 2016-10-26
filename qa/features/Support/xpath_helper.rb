$data =""
def click_link(link)
 @browser.find_element(:xpath, "//a[contains(text(),'#{link}')]").click
  sleep 2
end

def sclick_links(span)
@browser.find_element(:xpath,"//span[contains(text(),'#{span}')]").click
end

 def Click_ViaJavaScript(locator)
        WebElemenclick_linkt 
		el = getWebDriver().findElement(ByLocator(locator));
	  js.executeScript("arguments[0].click();",el);
    end

def find_label(label)
	@browser.find_element(:xpath, "//label[contains(text(),'#{label}')]")
end

def find_text_in_page(text)
	@browser.find_element :xpath => "//*[contains(text(),'#{text}')]"
end

def enter_data_in_field(data, field)
  element = @browser.find_element :xpath => "//*[contains(@name,'#{field}')]"
  #element = @browser.find_element :xpath => "//input[@class='form-control form-control-required']"
  element.clear
  element.send_keys "#{data}"
end



def enter_data(data, field)
    element = @browser.find_element :xpath => "//input[@placeholder = '#{field}']"
    element.clear
    element.send_keys "#{data}"
end

def append_data(data, field)
    element = @browser.find_element :xpath => "//input[@placeholder = '#{field}']"
    element.send_keys "#{data}"
end

def click(type, object)
  @browser.find_element(:xpath, "//*[contains(@#{type},'#{object}')]").click
end

def get_text(elem_locator)
  begin
    text = @browser.find_element(elem_locator).text.strip
    return text
  
  rescue Exception => e
    show_error(e, "get_text(elem_locator)", {"elem_locator" => elem_locator})
  end
end

def click_checkbox(locator)
  @browser.find_element(:xpath,"#{locator}").click
end

def scroll_up()
	@browser.execute_script "window.scrollBy(0,0)"
end

def assert_not_equal(text,content)
		if text.to_s == content.to_s
			puts "Value are same"
		end
end

#################################
def mouse_Hover(elem_locator)
  begin
   el = @browser.find_element(:xpath, "#{elem_locator}")
   @browser.action.move_to(el).perform
  rescue Exception => e
    show_error(e, "mouse_Hover(key)", {"key" => elem_locator})
  end
end


def click_by_xpath(xpath)
  begin
    wait_for_element_visible(xpath, 30)
    @browser.find_element(:xpath, "#{xpath}").click

  rescue Exception => e
    show_error(e, "click_by_xpath(xpath)", {"xpath" => xpath})
  end
end

########################################

def test_email(type)
	begin
		@browser.manage.delete_all_cookies
		sleep 3
		@browser.get "https://mail.google.com/mail/u/0/#inbox"
		sleep 3
		if /For mobile/.match(@browser.page_source)
			click_on_link("Sign in","One account. All of Google.")
			sleep 2
		end
		if /Inbox/.match(@browser.page_source)
			sleep 5
			@browser.find_element(:xpath,"//a[contains(@title,'amankhan14488@gmail.com')]").click
			click_on_link("Sign out","Sign in with a different account")
		end
		if /amankhan14488@gmail.com/.match(@browser.page_source)
			sleep 2
			fill_in("Passwd","test@testorigen")
        else
			fill_in("Email","amankhan14488@gmail.com")
			click_input("Next")
			sleep 2
			wait_for_text("Sign in with a different account")
			fill_in("Passwd","test@testorigen")
        end
		click_input("Sign in")
		wait_for_text("Loading")
		wait_for_text("Inbox")
		sleep 60
		#TODO Wait untill loading stops
	
	rescue Exception => e
		show_error(e,"test_email()",{})
	end
end


def click_on_link(link, wait_for)
  begin
    @browser.find_element(:xpath, "//a[contains(.,'#{link}')]").click
    wait = Selenium::WebDriver::Wait.new(:timeout => 15) # seconds
    wait.until { 
      /#{wait_for}/.match(@browser.page_source) 
    }
  
  rescue Exception => e
    show_error(e, "click_on_link(link, wait_for)", {"link" => link, "wait_for" => wait_for})
  end
end


def fill_in(field, data)
  begin
    element = @browser.find_element :xpath => "//input[@name = '#{field}']"
    element.clear
    element.send_keys "#{data}"
  
  rescue Exception => e
    show_error(e, "fill_in(field, data)", {"field" => field, "data" => data})
  end
end


def wait_for_text(text)
  begin
    wait = Selenium::WebDriver::Wait.new(:timeout => 50) # seconds
    wait.until { 
      /#{text}/.match(@browser.page_source) 
    }
	 rescue Exception => e
    show_error(e, "wait_for_text(text)", {"text" => text})
  end
end


def click_input(value)
  begin
    @browser.find_element(:xpath, "//input[contains(@value,'#{value}')]").click

  rescue Exception => e
    show_error(e, "click_input(value)", {"value" => value})
  end
end


def show_error(err, functionName, params)
  $error_raised = true

  puts "----------------------- ERROR -----------------------}"
  puts "fuctionName: " + functionName

  params.each do |key, value|
    puts "#{key} : #{value}"
  end

  puts "Err Msg: " + err.message  
  puts "----------------------- /ERROR -----------------------}"
 
  raise
end

def storeData(filename,data)
	base_path=File.expand_path(File.dirname(File.dirname(__FILE__)))
    value=base_path.split("features")
    file="#{value[0]}features/support/data/#{filename}.txt"
	if File.exist?(file)
		f = File.open(file, "w")
		f.write(data)
		f.close
	else
		out_file = File.new(file, "w")
		File.expand_path("Data/"+filename+".txt")
		out_file.write(data)
		out_file.close
	end
end

def find_text(text)
  begin
    wait = Selenium::WebDriver::Wait.new(:timeout => 15) # seconds
    wait.until { 
      /#{text}/.match(@browser.page_source) 
    }
  rescue Exception => e
    show_error(e, "find_text(text)", {"text" => text})
  end
end


def removeData(filename)
	base_path=File.expand_path(File.dirname(File.dirname(__FILE__)))
    value=base_path.split("features")
    file="#{value[0]}features/support/data/#{filename}"
	f = File.open(file, "r")
	if File.exist?(file)
		f = File.open(file, "w")
		f.puts("")
		f.close
	end
end

def getData(filename)
	$getdata=GetData.new(filename)
end

class GetData
	attr_accessor :data
	
   def initialize(filename)
      @data=""
		base_path=File.expand_path(File.dirname(File.dirname(__FILE__)))
		value=base_path.split("features")
		file="#{value[0]}features/support/data/#{filename}"
		f = File.open(file, "r")
		f.each_line do |line|
		@data = line
		puts data
		end
	end
end