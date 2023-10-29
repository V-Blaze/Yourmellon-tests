def replace_sirup(current_ml, current_dilution, recommended_dilution)
  sirup_to_replace = current_ml * (current_dilution - recommended_dilution) / recommended_dilution
  sirup_to_replace = sirup_to_replace.round(2)
  sirup_to_replace = 0 if sirup_to_replace.negative?

  sirup_to_replace
end

print 'Enter the amount of sirup in ml: '
current_ml = gets.to_f
print 'Enter the current dilution percentage: '
current_dilution = gets.to_f
print 'Enter the recommended dilution percentage: '
recommended_dilution = gets.to_f

sirup_to_replace = replace_sirup(current_ml, current_dilution, recommended_dilution)

puts "Replace #{sirup_to_replace} ml of your sirup with water."
