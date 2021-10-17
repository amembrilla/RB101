def digit_list(num)
  num.to_s.chars.map { |n| n.to_i }
end

puts digit_list(444) == [4, 4, 4] 