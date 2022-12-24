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

list = MyList.new(1, 2, 3, 4)
list.all? { |e| e < 5 }
list.all? { |e| e > 5 }

list.any? { |e| e == 2 }
list.any? { |e| e == 5 }

list.filter { |e| e.even? }
