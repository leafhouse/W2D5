class Node
  attr_reader :key
  attr_accessor :val, :next, :prev

  def initialize(key = nil, val = nil)
    @key = key
    @val = val
    @next = nil
    @prev = nil
  end

  def to_s
    "#{@key}: #{@val}"
  end

  def remove
    if self.next
      self.next.prev = self.prev
    end
    if self.prev
      self.prev.next = self.next
    end
    self.next = nil
    self.prev = nil
    # optional but useful, connects previous link to next link
    # and removes self from list.
    return self
  end
end

class LinkedList
  attr_accessor :head, :tail
  include Enumerable
  
  def initialize
    @head = Node.new
    @tail = Node.new

    @tail.prev = @head
    @head.next = @tail
  end

  def [](i)
    each_with_index { |link, j| return link if i == j }
    nil
  end

  def first
    if self.empty?
      return nil
    else
      self.tail.prev
    end
  end

  def last
  end

  def empty?
    if self.head.next == self.tail
      true
    else
      false
    end
  end

  def get(key)
  end

  def include?(key)
  end

  def append(key, val)
  end

  def update(key, val)
  end

  def remove(key)
  end

  def each
  end

  # uncomment when you have `each` working and `Enumerable` included
  # def to_s
  #   inject([]) { |acc, link| acc << "[#{link.key}, #{link.val}]" }.join(", ")
  # end
end
