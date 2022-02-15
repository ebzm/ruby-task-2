def count_keys(array)
  counts = Hash.new(0)
  for key in array
    counts[key] += 1
  end
  counts
end

p count_keys(["oragne", "banana", "banana", "banana", "lemon", "lemon"])