class Hash
  def safe_invert
    new_hash = {}
    self.each do |k,v|
	  if v.is_a? (Array)
		v.each { |x| new_hash.add_or_append(x, k) }
	  else
		new_hash.add_or_append(v, k)
	  end
	end
	return new_hash
  end

  def add_or_append(key, value)
	if has_key?(key)
	  self[key] = [value, self[key]].flatten
	else
	  self[key] = value
	end
  end
end

fruits_country = {
'orange' => 'Marocco',
'banana' => 'Ecuador',
'lemon' => 'Marocco',
}

p fruits_country.safe_invert