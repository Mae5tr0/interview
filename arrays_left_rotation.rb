#!/bin/ruby

n,k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

def left_rotate!(number, array)
  number.times do
    value = array.shift
    array.push(value)
  end
end

left_rotate!(n, a) # a.rotate!(n)
left_rotate!(k, a) # a.rotate!(k)

puts a.join(' ')