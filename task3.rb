def harshad_number?(num)
  sum_of_digits = num.to_s.chars.map(&:to_i).sum
  (num % sum_of_digits).zero?
end

print 'Enter an integer: '
num = gets.to_i

if harshad_number?(num)
  puts "#{num} is a Harshad number."
else
  puts "#{num} is not a Harshad number."
end
