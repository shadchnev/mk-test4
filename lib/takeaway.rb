class Takeaway
  def initialize(dishes, customers)
    @dishes = dishes
    @customers = customers
    @orders = []
  end
  attr_reader :dishes, :orders, :customers

  def list_dishes_show
    menu_print = "TakeAway menu: \n"
    dishes.each_with_index{|value, key|
      menu_print += "*#{key+1}* #{value.title}   £#{value.price.to_s}\n"
    }
    menu_print += "_______________________________\,"
    print menu_print
  end
  
  def dishes_count
    dishes.count
  end

  def add_customers(customer)
    @customers << customer
  end
   
  def find_customer(customer)
    @customers.each{|cust| 
      return customer if customer == cust
    }
    raise "no customer found"
  end

  def take_order(order,paid)
    raise "to create order need a customer" if order.customer_id == nil
    raise " not the same sum - cancel order" if paid != order.total

    if send_email?(order.customer_id, order.id) 
      order.noticed = true
      prepare_order(order)
    end
    order.status
  end
  
  def prepare_order(order)
    order.status = :cooking
    @orders << order
  end

  def send_email?(customer, order) 
    return true
  end

end