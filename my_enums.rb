module MyEnumerable
  def all?
    res = true
    each { |i| return res = false unless yield i }
    print res
  end

  def any?
    res = false
    each do |i|
      return res = true if yield i
    end
    print res
  end

  def filter
    res = []
    each do |i|
      res.push i if yield i
    end
    res
  end
end
