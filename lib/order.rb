class Order
  attr_accessor :id, :status, :noticed, :customer_id
  attr_reader :selected_dishes
  def initialize(id, customer_id)
    @id = id
    @customer_id = customer_id
    @selected_dishes = []
    @total = 0
    @status = :inprogress
    @noticed = false
  end
  
  def add_dish_to_order(dish,quantity)
    @selected_dishes << [dish, quantity]
  end
  
  def total
    @total = 0
    @selected_dishes.each{|item|
      @total += item[1].to_i * item[0].price
    }
    @total
  end

end