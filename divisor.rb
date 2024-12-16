print "Enter a number to divide: "
number = gets.chomp.to_f

loop do
  print "Enter a divisor: "
  divisor = gets.chomp.to_i

  if divisor == 0
    puts "Cannot divide by zero! Please enter a non-zero divisor."
  else
    result = number / divisor
    puts "The result of dividing #{number} by the divisor is: #{result}"
    break
  end
end
