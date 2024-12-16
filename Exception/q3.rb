# 3. Problem Statement: 
#Write a Ruby program that reads a file specified by the user. Use multiple rescue blocks to handle the following scenarios:

# File not found (Errno::ENOENT)
# Permission denied (Errno::EACCES)
# Any other generic exceptions

begin
  file_path = "examplee.txt"
  raise Errno::ENOENT,"Custom:File Does't Exist" unless File.exist?(file_path)
  raise Errno::EACCES,"Custom:Permission Denied" unless File.readable?(file_path)
  raise Errno::EACCES,"Custom:Permission Denied" unless File.writable?(file_path)

  File.open(file_path,"r") do |file|
    puts file.read
  end
rescue Errno::ENOENT,Errno::EACCES => e
  puts "Error #{e.message}"
end
