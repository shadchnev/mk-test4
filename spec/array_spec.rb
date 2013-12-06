require_relative '../lib/array'

describe Array do
  let(:arr) {Array.new([11,2,3])}
  it 'should return same count of elements' do
    arr.implant
    expect(arr.count).to eq (3)
  end
  it 'should return nil if block empty ' do
    expect(arr.implant).to eq(nil)
  end
  it 'should return last element if given block like {|memo,num| num}' do
    expect(arr.implant(0){|s,m| s += m}).to eq(16)
  end
   it 'should return last element if given block like {|memo,num| num}' do
    expect(arr.implant(5){|s,m| s += m}).to eq(21)
  end
  it 'should return last element if given block like {|memo,num| num}' do
    expect(arr.implant(0){|s,m| s -= m}).to eq(-16)
  end
end