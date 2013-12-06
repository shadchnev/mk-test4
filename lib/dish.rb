class Dish
  def initialize(title,price,category,quantity)
    @title = title
    @price = price
    @category = category
    @quantity = quantity
  end
  attr_accessor :title, :price, :category, :quantity

end