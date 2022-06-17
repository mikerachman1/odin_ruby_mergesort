array = [4, 2, 3, 5, 1]

def mergesort(array)
  return array if array.length < 2 #guard clause for single element arrays & empty arrays

  half = array.length / 2
  left = mergesort(array[0...half])
  right = mergesort(array[half..array.length])
  sorted = []

  until left.empty? || right.empty?
    left[0] <= right[0] ? sorted << left.shift : sorted << right.shift
  end
  sorted + left + right #this gets returned
end

p mergesort(array)
