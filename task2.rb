def classify_number(num)
  sum = (1..num/2).select { |i| num % i == 0 }.sum

  if sum < num
    "Deficient"
  elsif sum == num
    "Perfect"
  else
    "Abundant"
  end
end

print "Enter an integer: "
num = gets.to_i

result = classify_number(num)
puts "#{num} is a #{result} number."
