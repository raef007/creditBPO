require 'net/ssh'

#@start_time = Time.now

pid = spawn('ssh','sshuser@fuel-xbmc','dir')
puts 'before wait'
Process.wait(pid)
puts 'after wait'

#pid2= spawn('ssh','msylvestre@msylvestre-pc','run.bat')
#Process.wait(pid2)

#Process.waitpid(pid)
#Process.wait(pid2)

#@run_time = Time.now - @start_time

#puts "Execution time was: #{@run_time.to_f}"

#Net::SSH.start("fuel-xbmc", "sshuser") do |ssh|
#  
#  #result = ssh.exec!("dir")
#  #puts result
#end