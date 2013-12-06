require_relative "../lib/customer"

describe Customer do 
  let(:customer) {Customer.new(0,"Asta","astux@inbox.lt","my address")}
  it 'should init the customer' do
    expect(customer.id).to eq(0)
    expect(customer.name).to eq("Asta")
    expect(customer.email).to eq("astux@inbox.lt")
    expect(customer.address).to eq("my address")
  end


end