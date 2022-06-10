module MyEnumerable
  def all?
    each { |n| return false unless block.call(n)}
  end

  def any?
    each { |n| return true if block.call(n) }
  end
  
  def filter
    arr = []
    each { |n| arr.push(n) if block.call(n) }
    arr
  end
end
