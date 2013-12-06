require_relative "../lib/dish"

describe Dish do 
  let(:dish) {Dish.new("pizza",7.0,"main",3)}
  it 'should init the dish' do
    expect(dish.title).to eq("pizza")
    expect(dish.price).to eq(7.0)
    expect(dish.category).to eq("main")
    expect(dish.quantity).to eq(3)
  end

end