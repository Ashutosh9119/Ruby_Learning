puts "Enter your age:"

loop do
  age = gets.chomp.to_i
  
  begin
    if age >= 18 && age <= 100
      puts "Valid age."
      break
    else
      raise StandardError, "Invalid age"
    end
  rescue StandardError => e
    puts e.message
  end
end
can