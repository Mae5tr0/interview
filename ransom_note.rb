#!/bin/ruby

m,n = gets.strip.split(' ')
m = m.to_i
n = n.to_i
magazine = gets.strip
magazine = magazine.split(' ')
ransom = gets.strip
ransom = ransom.split(' ')

map = {}

magazine.each do |word|
  map[word] = map.fetch(word, 0) + 1
end

result = 'Yes'

ransom.each do |word|
  if map[word].nil? || map[word] == 0
    result = 'No'
    break
  end
  map[word] = map[word] - 1
end

puts result