puts "How many n do you want to provide to enter a valid integer?"
  n = gets.chomp.to_i
  
  puts "Please enter a valid integer between 1 and 10:"
  
  for _ in 1..n
    input = gets.chomp 
  
    if input.match?(/^\d+$/) 
      number = input.to_i
      if number >= 1 && number <= 10
        puts "Thank you! You entered a valid number: #{number}"
        break 
      else
        puts "The number is out of range. Please try again."
      end
    else
      puts "Invalid input. Please enter a valid integer."
    end
  end
  