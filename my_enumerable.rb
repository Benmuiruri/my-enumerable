module MyEnumerable
  def all?
    each { |n| return false unless block.call(n)}
  end

  def any?
    each { |n| return true if block.call(n) }
  end
end