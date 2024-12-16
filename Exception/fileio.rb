# Problem Statement: Write a Ruby program that opens a file for writing, 
#writes some content, and ensures the file is closed properly even if an exception occurs during the writing process.

file_path = "/example.txt"
begin
  
file =  File.open(file_path,"w")
file.puts("File handling in Ruby")

raise "Error occured during file writing" if rand(2).zero?
puts "File Writing is completed"

rescue Errno::ENOENT => e
  puts "File not found: #{e.message}"
rescue => e
  puts "#{e.message}"
ensure
  if file
    file.close
    puts "File closed."
  end
end





