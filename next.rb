#Create a Ruby program that loops through numbers from 1 to 20.
# Skip numbers that are multiples of 3 and print the rest.


arr = []
for i in 1...21
  arr[i]=i
end
puts arr

print"hello"

for i in 1..20
  if arr[i]%3==0
    next
  end
  puts"#{arr[i]}"
end
