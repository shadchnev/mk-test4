require_relative "../lib/order"

describe Order do 
  let(:dish) {double(:dish,:title=>"pizza",:price=>7.0,:category=>"main",:quantity=>0)}
  let(:dish1) {double(:dish,:title=>"lazania",:price=>9.0,:category=>"main",:quantity=>0)}
  let(:order) {Order.new(1,0)}
  it 'should have init with id' do
    expect(order.id).to eq(1)
  end
  it 'should be 2 dishes in order' do
    expect(order.add_dish_to_order(dish,3)[0]).to eq([dish,3])
    expect(order.add_dish_to_order(dish1,2)[1]).to eq([dish1,2])
    expect(order.selected_dishes.count).to eq(2)
  end

  it 'should return the total of the order' do
  	order.add_dish_to_order(dish,3)
  	order.add_dish_to_order(dish1,3)
  	expect(order.total).to eq(21+27)
  end

end