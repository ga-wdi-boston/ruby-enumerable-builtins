# frozen_string_literal: true

# range as enumerable lab

range = (1..10)

puts "sum all #{range.reduce(:+)}"

puts "sum even #{range.select(&:even?).reduce(:+)}"

puts "sum odd #{range.select(&:odd?).reduce(:+)}"

# why might this method be preferable? Hint: count number of iterations
altogether = range.each_with_object(Hash.new(0)) do |range_element, hash|
  hash[:even] += range_element if range_element.even?
  hash[:odd] += range_element if range_element.odd?
  hash[:all] += range_element
end

puts "sum everything #{altogether}"
