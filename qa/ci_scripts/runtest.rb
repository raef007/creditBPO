require 'open3'
require 'json'
require './util'

@current_status = ""
@post_status = false
@os = ""
@version = ""

####################################### CI Preparation #######################################

puts ">>>>>>> Read ci_env.json config file <<<<<<"

read_config("../ci_env.json")
puts "Config Version: " + @version
puts "Current OS: " + @os

puts "\n\n>>>>>>> Going to QA root directory <<<<<<"

if @os == "Windows"
	Dir.chdir("..")

elsif @os == "Ubuntu"
	Dir.chdir("/home/ubuntu/qa")

end

puts "Current dir: " + Dir.pwd

####################################### CI Execution #######################################

while(true)
	puts "\n\n>>>>>> Pulling from Git <<<<<<"
	
	if @os == "Windows"
		go('git.exe pull origin master')
	elsif @os == "Ubuntu"
		#go('git pull origin master')					# I need to add SSH Keys on the server...
	end

	puts "\n\n>>>>>> Starting Cucumber test <<<<<<"

	if @os == "Windows"
		go_cucumber('cucumber.bat --tags @qa')
	elsif @os == "Ubuntu"
		go_cucumber('bundle exec cucumber --tags @ready')
	end

	puts "Exit Code with Success ? #{@exit_status.success?}"

	if @os == "Windows"
		my_cmd = 'curl.exe '
	elsif @os == "Ubuntu"
		my_cmd = 'curl '
	end

	if (@exit_status.success?)
    @post_status = is_post_needed(@exit_status.success?, @current_status)
    @current_status = "pass"
	  @scenario_result = clean_color(@scenario_result,"green")

	  my_cmd = my_cmd + '-X POST -k https://hooks.slack.com/services/ -d "{\"text\":\"Cucumber test has passed, good job buddy!\n -----> ' + @scenario_result + '\"}"'
	
	else
	  @post_status = is_post_needed(@exit_status.success?, @current_status)
    @current_status = "fail"
		@scenario_result = clean_color(@scenario_result,"red")
	  my_cmd = my_cmd + '-X POST -k https://hooks.slack.com/services/ -d "{\"text\":\"Cucumber test has failed, go fix them NOW\n -----> ' + @scenario_result + '\"}"'

	end

  if @post_status
		puts "\n\n>>>>>> Posting to Slack <<<<<<"
		puts my_cmd
		go(my_cmd)

	else
		puts "\n\n>>>>>> Not Posting to Slack, status hasn't changed <<<<<<"
		puts "===========================================================\n\n\n\n\n"

	end	

end
	