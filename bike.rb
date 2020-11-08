# Bike

class Bike

  STANDARD_WEIGHT_LBS = 200
  MAX_CARGO = 10

  attr_accessor :id, :color, :price, :weight, :rented, :cargo

  def initialize(id, color, price, weight = STANDARD_WEIGHT_LBS, rented = false, cargo)
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

  def cargo_capacity
    MAX_CARGO
  end

  def cargo_remaining_capacity
    MAX_CARGO - self.cargo.capacity
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
