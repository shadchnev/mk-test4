class Customer
  def initialize(id,name,phone,address)
    @phone = phone
    @id = id
    @name = name
    @address = address
  end
  attr_accessor :id, :name, :phone, :address
  
  def validate_phone(phone)
    phone_digits = /\d{11}/
    raise "not valid phone!!" unless phone_digits.match(phone)
    puts "\neverything looks ok with phone number" 
  end
end 