require_relative 'enumerable'

class Mylist
  include Myenumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

list = Mylist.new(1, 2, 3, 4)

puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })
puts(list.all? { |e| e > 5 })
puts(list.all? { |e| e < 5 })
