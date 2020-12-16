def valid_card?(card)
  # whitespaces shouldn't matter
  array = card.gsub(' ', '').split('')
  sum = 0
  # Starting from the rightmost digit double the value of every second digit --> index even
  array.each_with_index do |element, index|
    if index.even?
      if element.to_i * 2 < 9
        sum += element.to_i * 2
      else
        # If the result of this doubling operation is greater than 9 (e.g. 8 * 2 = 16),
        # add the digits of the product (e.g. 16: 1 + 6 = 7)
        digits = (element.to_i * 2).to_s.split('')
        digits.each do |digit|
          sum += digit.to_i
        end
      end
    else
      # write down the rest of the numbers directly & sum up
      sum += element.to_i
    end
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