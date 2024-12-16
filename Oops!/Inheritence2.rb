class Employee
  attr_accessor :name, :salary

  def initialize(name, salary)
    @name = name
    @salary = salary
  end

  def display_details
    puts "Name: #{@name}"
    puts "Salary: #{@salary}"
  end
end

class Manager < Employee
  def give_bonus(bonus)
    @salary += bonus
  end
end

class Developer < Employee
  def increase_salary(percentage)
    @salary += @salary * (percentage / 100.0)
  end
end

manager = Manager.new("Ram", 50000)
developer = Developer.new("Shyam", 40000)

puts "Manager Details:"
manager.display_details
puts "Developer Details:"
developer.display_details

manager.give_bonus(5000)
puts "\nManager's salary after bonus:"
manager.display_details

developer.increase_salary(10)
puts "\nDeveloper's salary after 10% increase:"
developer.display_details

