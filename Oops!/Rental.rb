class Vehicle
  def calculate_rent(days)
    raise NotImplementedError, 
  end
end

class Car < Vehicle
  def calculate_rent(days)
    return 20 * days
  end
end

class Bike < Vehicle
  def calculate_rent(days)
    return 10 * days
  end
end

car = Car.new
bike = Bike.new

car_rent = car.calculate_rent(5)
bike_rent = bike.calculate_rent(5)

puts "Car rental charge for 5 days: $#{car_rent}"
puts "Bike rental charge for 5 days: $#{bike_rent}"
