def stock_picker(array)
  max_profit = 0
  result = Array.new(0)
  array.each_with_index do |element, index|
    current_profit = 0
    i = index + 1
    while i < array.length
      current_profit = array[i] - element if element < array[i]
      if current_profit > max_profit
        max_profit = current_profit
        result[0] = index
        result[1] = i
      end
      i += 1
    end
  end
  result
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
