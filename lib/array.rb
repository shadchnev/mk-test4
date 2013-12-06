class Array
  def implant(start = nil )
    return nil if !block_given?
    starter, first_member = (start == nil ? 0 : start), 0

    if start.nil? 
      skipper, starter = 0, self.first
      self.each do |element|
        skipper += 1
        next if skipper == 1
        starter +=  (yield first_member,element)
        puts yield first_member, element
      end
    else
      self.each do |element|
        starter +=  (yield first_member,element)
        puts yield first_member, element
      end
    end
    return starter
  end

end