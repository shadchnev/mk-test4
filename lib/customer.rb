class Customer
  def initialize(id,name,email,address)
    @id = id
    @name = name
    @email = email
    @address = address
  end
  attr_accessor :id, :name, :email, :address
end