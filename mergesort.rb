array = [6, 5]

def mergesort(array)
  return if array.length < 2 #guard clause for single element arrays & empty arrays

  left = array.select { |element| array.index(element) < (array.length / 2) }
  right = array.select { |element| array.index(element) >= (array.length / 2) }
  p left
  p right
  if left.length == 1 && right.length == 1
    left[0] < right[0] ? merge = [left, right].flatten : merge = [right, left].flatten
  else
    mergesort(left)
    mergesort(right)
  end
  p merge
end

mergesort(array)