module MyEnumerable
  def all?
    each { |num| return false unless yield(num) }
    true
  end

  def any?
    each { |num| return true if yield(num) }
    false
  end

  def filter
    result = []
    each { |num| result.push(num) if yield(num) }
    result
  end
end
