require_relative "../lib/takeaway"

describe Takeaway do 
  let(:dish) {double(:dish,:title=>"pizza",:price=>7.0,:category=>"main")}
  let(:dish1) {double(:dish,:title=>"lazania",:price=>9.0,:category=>"main")}
  let(:customer) {double(:customer,:id=>1,:name=>"ASTA",:email=>"astux@inbox.lt",:address=>"my address")}
  let(:order) {double(:order,:id=>1,:customer_id=>1, :total => 50)}
  let(:takeaway) {Takeaway.new([dish,dish1],[])}
  let(:order1) {double(:order,:id=>1,:customer_id=>nil, :total => 50)}
  it 'should have init with  dishes list' do
    expect(takeaway.dishes.count).to eq(2)
  end
  it 'shoult be 2 dishes in menu' do
    expect(takeaway.dishes_count).to eq(2)
  end

  it 'should add to the system new customer ' do
  	takeaway.add_customers(customer)
  	expect(takeaway.customers.count).to eq(1) 
  end

  it 'should not take order with  no customer' do
  	takeaway.add_customers(customer)
  	expect(takeaway.customers.count).to eq(1) 
  end

  it 'should raise error if no customer found' do
    expect(lambda { takeaway.find_customer(customer) }).to raise_error(RuntimeError)
  end
  it 'should return error if  order total not same as paid sum' do
  	expect(lambda { takeaway.take_order(order,20) }).to raise_error(RuntimeError)
  end
  it 'should return error if  order customer id not set' do
  	
  	expect(lambda { takeaway.take_order(order1,20) }).to raise_error(RuntimeError)
  end
end