# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  return nil if name_hash.empty?
  values = []
  name_hash.each { |key, value| values << value }
  min_value = values.inject { |memo, value| memo < value ? memo : value }
  name_hash.rassoc(min_value).first
end
