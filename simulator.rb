require_relative "./lib/takeaway"
require_relative "./lib/dish"
require_relative "./lib/customer"
require_relative "./lib/order"


dish1 = Dish.new("pizza",7.0,"main")
dish2 = Dish.new("lazzania",9.0,"main")
dishes = [dish1,dish2]
customers = []
takeaway = Takeaway.new(dishes,customers)

customer = Customer.new(1,"Asta","astux@inbox.lt","my adddresss")
takeaway.add_customers(customer)

takeaway.list_dishes_show
order = Order.new(1,customer.id)
order.add_dish_to_order(dish1,2)
paid = 14.0
takeaway.take_order(order,paid)
print "\n\n Order status :",order.status
puts 