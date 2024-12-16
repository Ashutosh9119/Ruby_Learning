#Problem Statement: Write a Ruby program that prompts the user to enter two numbers and performs division. Use exception handling to catch and handle the following errors:

def divide(a, b)
  begin
    result = a / b
    puts "The result is #{result}"
  rescue ZeroDivisionError
    puts "Error: You can't divide by zero!"
  ensure
    puts "This will always be executed."
  end
end


divide(10, 2)  
divide(10, 0) 
  
