class MaxIntSet

  attr_reader :store

  def initialize(max)
    @store = Array.new(max, false)
  end

  def insert(num)
    validate!(num)
    return false if @store[num]
    self.store[num] = true
  end

  def remove(num)
    validate!(num)
    if !include?(num)
      return nil
    else
      self.store[num] = false
    end
    num
  end

  def include?(num)
    validate!(num)
    return self.store[num]
  end

  private

  def is_valid?(num)
    if num.between?(0, @store.length - 1)
      true
    else
      false
    end
  end

  def validate!(num)
    if !is_valid?(num)
      raise "Out of bounds"
    end
  end
end


class IntSet
  attr_reader :store

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)

    if include?(num)
      return false
    end

    self[num] << num

  end

  def remove(num)

    self[num].delete(num)

  end

  def include?(num)

    self[num].include?(num)
    
  end

  private

  def [](num)
    @store[num % num_buckets]
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
  end
end
