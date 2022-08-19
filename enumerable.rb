module Myenumerable
  def any?
    rt = false

    each do |item|
      rt = true if yield item
    end

    rt
  end

  def all?
    rt = true

    each { |item| rt = false unless yield item }

    rt
  end

  def filter
    rt = []
    return rt.to_enum unless block_given?

    each do |item|
      rt.push(item) if yield item
    end

    rt
  end
end
