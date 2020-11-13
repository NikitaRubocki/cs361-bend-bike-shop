class Luggage

  attr_reader :capacity, :items

  def initialize(capacity: 10, items:)
    @capacity = capacity
    @items = items
  end

  def add(item)
    self.items << item
  end

  def weight
    self.items.size * 10
  end

end
