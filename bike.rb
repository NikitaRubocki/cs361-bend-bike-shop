# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs
  MAX_CARGO = 10

  attr_accessor :id, :color, :price, :weight, :rented, :cargo

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false, cargo)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo = cargo
  end

  def rent!
    self.rented = true
  end

  def add_cargo(item)
    self.cargo.add(item)
  end

  def remove_cargo(item)
    self.cargo.remove(item)
  end

  def pannier_capacity
    MAX_CARGO
  end

  def pannier_remaining_capacity
    MAX_CARGO - self.capacity
  end

end


class Cargo

  def initialize
    @contents = []
  end

  def add(item)
    self.contents << item
  end

  def remove(item)
    self.contents.remove(item)
  end

  def capacity
    self.contents.size
  end

end
