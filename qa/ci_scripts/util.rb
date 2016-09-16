def read_config(file_path)
    f = IO.read(file_path)
    j = JSON.parse(f)
    @os = j["OS"]
    @version = j["version"]
end

# Run Cucumber test, spit the output in the stdout and get the test result
def go_cucumber(cmd)
    @exit_status = false
    catch_next_3_line = false
    catch_line = 0

    Open3.popen3(cmd) do |stdin, stdout, stderr, wait_thr|
      while line = stdout.gets
        
        if line["scenario"]
            catch_next_3_line = true
        end 

        if catch_next_3_line
        
          if catch_line == 0
            #@scenario_result = line[0,line.index("scenario")] + "Scenario passed"       
            @scenario_result = line[0,line.length-1]
          elsif catch_line == 2
            @scenario_result = @scenario_result + " (" + line[0,line.length-1] + ")"
          end

          catch_line = catch_line + 1
        end
    
      puts line
      end

      @exit_status = wait_thr.value
    end
end

# Execute any Command Line and spit the output in the stdout
def go(cmd)
  Open3.popen3(cmd) do |stdin, stdout, stderr, wait_thr|
    while line = stdout.gets
      puts line
    end
    @exit_status = wait_thr.value
  end
end

def clean_color(s,color)
  temp = s.dump                               #Get a string dump including system char for color like \e[31m

  if color == "green"
    temp = temp.sub /(\\e\[32m)/,''           #Remove red color begin system char \e[31m
  elsif color == "red"
    temp = temp.sub /(\\e\[31m)/,''           #Remove red color begin system char \e[31m
  end

  temp = temp.sub /(\\e\[0m)/,''              #Remove red color end system char \e[0m
  return temp[1,temp.length-3]                #Remove a "/ added at the beginning & ending of line, after a str.sub (I don't understand why !!) 
end

def is_post_needed(cucumber_result, current_status)

  if cucumber_result == true
    if current_status == "pass"
      return false
    else
      return true
    end
  else
    if current_status == "fail"
      return false
    else
      return true
    end
  end    
end
