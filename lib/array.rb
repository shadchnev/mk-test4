class Array
  def implant(start = nil )
    return nil if !block_given?
    starter = (start == nil ? 0 : start)

    if start.nil? 
      starter = self.first
      self.each do |element|
        next if element == starter
        starter = (yield starter,element)
        puts yield starter, element
      end
    else
      self.each do |element|
        starter = (yield starter,element)
        puts yield starter, element
      end
    end
    return starter
  end

end