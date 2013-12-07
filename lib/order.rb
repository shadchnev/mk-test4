class Order
  attr_accessor :id, :noticed, :customer_id,:status
  attr_reader :selected_dishes
  def initialize(id, customer_id)
    @id = id
    @customer_id = customer_id
    @selected_dishes = []
    @total = 0
    @status = "inprogress"
    @noticed = false
  end
  
  def add_dish_to_order(dish,quantity)
    @selected_dishes << [dish, quantity]
  end

  def status=(value)
    @status = value
  end
  
  def total
    @total = 0
    @selected_dishes.each{|item|
      @total += item[1].to_i * item[0].price
    }
    @total
  end

  def update_order(status,noticed)
    @status = status
    @noticed = noticed
  end

  def my_order_show
    list_order = "Your choice:\n"
    @selected_dishes.each{|colection|
      list_order+=" #{colection[1]} x #{colection[0].title}   => £#{colection[1]*colection[0].price}\n"
    }
    list_order+="\n_______\n"
    list_order+="Total: £"+total.to_s
    print list_order
  end
end