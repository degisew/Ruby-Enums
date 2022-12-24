require './my_enums'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    @list.each do |item|
      yield item if block_given?
    end
  end
end
