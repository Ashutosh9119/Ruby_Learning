class Student
  attr_accessor :name, :age
  attr_reader :grades

  def initialize(name, age)
    @name = name
    @age = age
    @grades = []
  end

  def add_grade(grade)
    if grade.is_a?(Numeric) && grade.between?(0, 100)
      @grades << grade
    else
      puts "Invalid grade. Please enter a numeric value between 0 and 100."
    end
  end

  def calculate_average
    return 0 if @grades.empty? # Handle case where no grades are added

    sum = 0
    for grade in @grades
      sum += grade
    end

    sum / @grades.size.to_f
  end
end


student = Student.new("Ashutosh Singh", 22)
puts "Student Name: #{student.name}"
puts "Student Age: #{student.age}"

student.add_grade(85)
student.add_grade(90)
student.add_grade(78)

puts "Grades: #{student.grades}" 
puts "Average Grade: #{student.calculate_average}"


