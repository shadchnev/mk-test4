class Array
  def implant(starter = nil)
    starter = (starter == nil ? self.first : starter)
    first_member = 0
    return nil if !block_given?
    self.each do |element|
      starter +=  (yield first_member,element)
      puts yield first_member, element
    end
   #return  memo == 0 
   
   return starter
  end

end