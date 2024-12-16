# Ruby program to iterate through an array of numbers
# Stop iteration when a number divisible by 7 is encountered


arr = []
puts "Enter 7 numbers:"
for i in 0...7
  arr << gets.chomp.to_i
end

puts "Processed numbers until encountering a number divisible by 7:"

for i in 0...arr.length
  if arr[i] % 7 == 0
    break
  end
  puts "#{arr[i]}"
end

