require "pocketm/version"



module Pocketm

  puts "How much money did you have?"

  balance = gets.chomp.to_i

  puts "How much did you spend?"

  expense = gets.chomp.to_i

  puts "On what did you spend #{expense} on ?"
  food = gets.chomp

  left = balance - expense

  puts "Checking if there is an already present report file "

  if File.file?('report.txt') == true
    puts " passing your data  into it"
    
    a = File.open('report.txt','a')
    
    a.write("\n")
    a.write("#{food} -- #{expense}")
    a.write("\n")
    a.write("BALANCE = #{left}")
    
  else
    puts "Creating file and passing your data into it"
    
    a = File.open('report.txt','w')
    a.write("\t EXPENSE REPORT")
    a.write("\n")
    a.write("#{food} -- #{expense}")
    a.write("\n")
    a.write("BALANCE = #{left}")
  end
  
end
