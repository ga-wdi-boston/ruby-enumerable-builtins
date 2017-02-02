# frozen_string_literal: true

# range as enumerable code along

ints = 0..10
alpha = 'a'..'z'
hex = 0x0..0xf

puts "ints range is #{ints}"
puts "maximum int is #{ints.max}"
puts "minimum int is #{ints.min}"

puts "alpha range is #{alpha}"
puts "maximum alpha is #{alpha.max}"
puts "minimum alpha is #{alpha.min}"

puts "hex range is #{hex}"
puts "maximum hex is #{hex.max}"
puts "minimum hex is #{hex.min}"

every_third_alpha = alpha.group_by do |a|
  (a.ord % 3).zero?
end

# note! the keys here are booleans, not symbols or strings
# see https://ruby-doc.org/core-2.2.3/Enumerable.html#method-i-group_by
puts "every third alpha is #{every_third_alpha[true]}"
