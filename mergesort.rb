array = [6, 5, 2, 4, 1, 3]

def mergesort(array)
  return if array.length < 2 #guard clause for single element arrays & empty arrays

  left = array.select { |element| array.index(element) < (array.length / 2) }
  right = array.select { |element| array.index(element) >= (array.length / 2) }
  p left
  p right
  mergesort(left)
  mergesort(right)
end

mergesort(array)