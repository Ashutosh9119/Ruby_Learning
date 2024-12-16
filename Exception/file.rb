
def read_file(file_name)
  File.open(file_name, "r") 
    puts "File content:"
    puts file.read
  end 
end


begin
  print "Enter the file to read: "
  file_name = gets.chomp
  read_file(file_name)    
rescue Errno::ENOENT
  puts "Error: File not found. Please check the file name and try again."
rescue Errno::EACCES
  puts "Error: Permission denied. You do not have access to this file."
ensure
  puts "Program execution complete."
end
