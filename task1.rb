def list_of_products(sum)
  results = []

  (1..sum/2).each do |factor|
    complement = sum - factor
    results << "#{factor} * #{complement}" if factor * complement == sum
  end

  results
end

sum = 900900
product_list = list_of_products(sum)

puts "Valid products for sum #{sum}:"

if product_list.empty?
  puts "No valid products found."
else
  product_list.each do |product|
    puts product
  end
end
