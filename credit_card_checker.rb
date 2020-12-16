def valid_card?(card)
  # If the result of this doubling operation is greater than 9 (e.g., 8 * 2 = 16),
  # add the digits of the product (e.g., 16: 1 + 6 = 7, 18: 1 + 8 = 9)
  array = card.gsub(' ', '').split('')
  index = [-2, -4, -6, -8, -10, -12, -14, -16]
  sum = 0
  index.each do |i|
    if array[i].to_i * 2 < 9
      sum += array[i].to_i * 2
    else
      digits = (array[i].to_i * 2).to_s.split('')
      digits.each do |digit|
        sum += digit.to_i
      end
    end
  end

  # write down the rest of the numbers directly & sum up
  index_odd = [-1, -3, -5, -7, -9, -11, -13, -15]
  index_odd.each do |i|
    sum += array[i].to_i
  end

  # if modulo 10 equal to 0 true else false

  (sum % 10).zero? && card != ''
end

# simple tests
# should return true for:
puts valid_card?("4242 4242 4242 4242")
puts valid_card?("4242 4242  42424242")

# should return false for:
puts valid_card?("5555 5555 5555 5555")
puts valid_card?("4242424242424241")