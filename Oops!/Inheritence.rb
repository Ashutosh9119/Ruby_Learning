class Animal
  def make_sound
    raise NotImplementedError, "Subclasses must implement the make_sound method"
  end

  def describe_animal
    puts "This animal makes the sound: #{make_sound}"
  end
end

class Dog < Animal
  def make_sound
    "Woof"
  end
end

class Cat < Animal
  def make_sound
    "Meow"
  end
end

dog = Dog.new
dog.describe_animal

cat = Cat.new
cat.describe_animal

