class Dish
  def initialize(title,price,category)
    @title = title
    @price = price
    @category = category
  end
  attr_accessor :title, :price, :category
end