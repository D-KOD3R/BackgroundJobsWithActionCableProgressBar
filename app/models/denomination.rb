class Denomination < ApplicationRecord


def array_permutations index, array
  result = []
  if index == array.size
    result << ""
    return result
  end
  array[index].each do |element|
    array_permutations(index + 1, array).each do |x|
      result << "#{element}, #{x}"
    end
  end
  return result
end

def zipper combinations, start_value
  denominations = start_value..(combinations.size += start_value)
  denominations.zip combinations
end


end
