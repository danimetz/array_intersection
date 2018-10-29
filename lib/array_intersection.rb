# Creates a new array to return the intersection of the two input arrays
# If m > n
# Time complexity: O(n)
# Space complexity: O(m)
def intersection(array1, array2)
  if array1 == nil || array2 == nil
    return []
  end

  same = []

  if array1.length > array2.length
    larger = array1
    shorter = array2
  else
    larger = array2
    shorter = array1
  end

  hash = Hash.new()

  shorter.each do |num|
    hash[num] = 1
  end

  i = 0
  while i < larger.length
    if hash[larger[i]] == 1
      same << larger[i]
    end
    i += 1
  end

  return same
end
