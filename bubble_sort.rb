def bubble_sort(array)
  array.each do
    i = 0
    while i < array.length - 1
      if array[i] > array[i + 1]
        temp = array[i]
        array[i] = array[i + 1]
        array[i + 1] = temp
      end
      i += 1
    end
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
