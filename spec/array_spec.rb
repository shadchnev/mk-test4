require_relative '../lib/array'

describe Array do
  let(:arr) {Array.new([11,2,3])}
  let(:arrString) {Array.new(["aa","bb","cc"])}
  it 'should return same count of elements' do
    arr.implant
    expect(arr.count).to eq (3)
  end
  it 'should return nil if block empty ' do
    expect(arr.implant).to eq(nil)
  end
  it 'should return sum if given block like {|s,n| s+=n} but has a start value 0' do
    expect(arr.implant(0){|s,m| s += m}).to eq(16)
  end
   it 'should return sum if given block like {|s,n| s+=n} but has a start value 5 ' do
    expect(arr.implant(5){|s,m| s += m}).to eq(21)
  end
  it 'should return sub if given block like {|s,n| s-=n} but has a start value 0 ' do
    expect(arr.implant(0){|s,m| s -= m}).to eq(-16)
  end
  it 'should return sub if given block like {|s,n| s-=n} but hasnt a start value ' do
     expect(arr.implant{|s,m| s -= m}).to eq(6)
  end
   it 'should return multi if given block like {|s,n| s*=n} but has a start value 1' do
     expect(arr.implant(1){|s,m| s *= m}).to eq(66)
  end
  it 'should return multi if given block like {|s,n| s*=n} but has a start value 3' do
     expect(arr.implant(3){|s,m| s *= m}).to eq(198)
  end
  it 'should return multi if given block like {|s,n| s*=n} but hasnt a start value ' do
     expect(arr.implant{|s,m| s *= m}).to eq(66)
  end
  it 'should return div if given block like {|s,n| s/=n} but hasnt a start value ' do
     expect(arr.implant(132){|s,m| s /= m}).to eq(2)
  end
  it 'adding string without first val' do
     expect(arrString.implant{|s,m| s += m}).to eq("aabbcc")
  end
  it 'adding string with first val' do
     expect(arrString.implant("bb"){|s,m| s += m}).to eq("bbaabbcc")
  end
end