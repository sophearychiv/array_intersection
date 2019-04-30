# Returns a new array to that contains elements in the intersection of the two input arrays
# Time complexity: O(n x m) where n is the length of array1, and m is the length
# of array2 since the method loops through both arrays.
# Space complexity: O(n) because the intersection array stores the output.
def intersection(array1, array2)
  return [] if array1.nil? || array2.nil? || array1 == [] || array2 == []
  return [] if array1 == [] && array2 == []
  return array1 if array1 == array2

  intersection = []
  array1.each do |i|
    array2.each do |j|
      intersection << i if i == j
    end
  end

  return intersection
end

p
