#!/bin/ruby

a = gets.strip
b = gets.strip

def calc_frequency(string, storage)
  string.each_char do |letter|
    storage[letter] = storage.fetch(letter, 0) + 1
  end
  storage
end

frequency_a = calc_frequency(a, {})
frequency_b = calc_frequency(b, {})

delete_count = 0

frequency_a.keys.each do |letter|
  count_a = frequency_a[letter]
  count_b = frequency_b.fetch(letter, 0)
  frequency_b.delete(letter)
  delete_count += (count_b - count_a).abs
end

frequency_b.values.each do |value|
  delete_count += value
end

puts delete_count

