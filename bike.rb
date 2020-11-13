
class Bike

  attr_reader :id, :color, :price, :weight

  def initialize(id:, color:, price:, weight: 200)
    @id = id
    @color = color
    @price = price
    @weight = weight
  end

end
