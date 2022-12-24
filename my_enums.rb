module MyEnumerable

def all?
    res = true
    each { |i| return res = false unless yield i }
    print res
end

