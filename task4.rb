def generate_ring_combinations
  rings = ["agate", "diamond", "diamond", "citrine"]
  combinations = []

  rings.permutation(4).to_a.uniq.each do |combination|
    combinations << combination.join(", ")
  end

  combinations
end

combinations = generate_ring_combinations

puts "Total combinations: #{combinations.size}"
combinations.each_with_index do |combination, index|
  puts "#{index + 1}. #{combination}"
end
