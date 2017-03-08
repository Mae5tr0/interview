#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
  expression = gets.strip

  result = 'YES'
  brackets = []

  expression.chars.each do |bracket|
    if '{(['.include?(bracket)
      brackets.push(bracket)
      next
    end
    previous = brackets.pop
    case bracket
      when ')'
        if previous != '('
          result = 'NO'
          break
        end
      when ']'
        if previous != '['
          result = 'NO'
          break
        end
      when '}'
        if previous != '{'
          result = 'NO'
          break
        end
    end
  end

  result = 'NO' if brackets.size > 0
  puts result
end