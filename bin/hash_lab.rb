# frozen_string_literal: true

# hash as enumerable lab

alpha = ('a'..'z').map(&:to_sym).freeze
hash = {}

(1..26).each_with_index do |number, index|
  hash[alpha[index]] = number
end

# accumulate hash keys and values using reduce

reduced_hash = hash.reduce(
  keys: [],
  values: []
) do |memo, (key, value)|
  memo[:keys] << key
  memo[:values] << value
  memo # important detail! common source of bugs (try it!)
end
# run the linter!

puts "reduced hash is #{reduced_hash}"

# accumulate hash keys and values using each_with_object
ewo_hash = hash.each_with_object(
  keys: [],
  values: []
) do |(key, value), memo|
  memo[:keys] << key
  memo[:values] << value
  # what's missing? neat.
end
# why might this be preferred?

puts "hash deconstructed with each_with_object is #{ewo_hash}"

# hash.keys
# hash.values
