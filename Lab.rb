class SortedArray
  attr_accessor :internal_arr # This is for convenience in the tests.

  def initialize(input_arr=[])
    @internal_arr = []
    input_arr.each { |x| add(x) }
  end

  def add(new_ele)
    @internal_arr.insert(first_larger_index(new_ele), new_ele)
  end

  def size
    @internal_arr.size
  end

  def [](index)
    @internal_arr[index]
  end

  def first_larger_index(target, start_ind=0, end_ind=@internal_arr.size)
    i = start_ind
    @internal_arr.slice(start_ind..end_ind).each { |x| 
      i += 1 if target > x
    }
    return i
  end

  def index(target)
    @internal_arr.find_index(target)
  end
end