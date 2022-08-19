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

puts('--any? results--')
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })
puts("\n--all? results--")
puts(list.all? { |e| e > 5 })
puts(list.all? { |e| e < 5 })
puts("\n--filter results--")
p list.filter(&:even?)
puts("\n--filter results without block--")
puts(list.filter)
