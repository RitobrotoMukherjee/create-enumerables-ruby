module Myenumerable
  def any?
    rt = false

    each { |item| rt = true if yield item }

    rt
  end

  def all?
    rt = true

    each { |item| rt = false unless yield item }

    rt
  end
end
