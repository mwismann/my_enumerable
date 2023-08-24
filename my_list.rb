require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  attr_accessor :list

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)
# ? => #<MyList: @list=[1, 2, 3, 4]>

# * Test #all?
p(list.all? { |e| e < 5 })
# ? => true
p(list.all? { |e| e > 5 })
# ? => false

# * Test #any?
p(list.any? { |e| e == 2 })
# ? => true
p(list.any? { |e| e == 5 })
# ? => false

# * Test #filter
p(list.filter(&:even?))
# ? => [2, 4]
