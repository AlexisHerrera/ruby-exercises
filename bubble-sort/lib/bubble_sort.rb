def swap_positions(array, i, j)
  temp = array[i]
  array[i] = array[j]
  array[j] = temp
  array
end

def bubble_sort(array)
  array_sorted = array
  loop do
    sorted = true
    array_sorted.each_index do |index|
      if  index+1 < array_sorted.length && array[index] > array[index+1]
        swap_positions(array_sorted, index, index+1)
        sorted = false
      end
    end
    break if sorted
  end
  array_sorted
end
