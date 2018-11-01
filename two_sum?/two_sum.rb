def bad_two_sum?(arr, target)
  i = 0
  
  while i < arr.length
    j = i + 1
    
    while j < arr.length
      return true if arr[i] + arr[j] == target # O(n^2)
      j += 1
    end
    i += 1
  end
  false
end

def okay_two_sum?(arr, target)
  sorted = arr.sort
  sorted.each_with_index do |el, i|
    comp = target - el
    idx = b_search(sorted, comp)
    return true if idx && idx != i
  end
  false
end

def b_search(arr, target)
  return nil if arr.empty?
  
  mid_idx = arr.length / 2
  
  case target <=> arr[mid_idx]
  when -1
    b_search(arr.take(mid_idx), target)
  when 0
    mid_idx
  when 1
    call = b_search(arr.drop(mid_idx + 1), target)
    call.nil? ? nil : mid_idx + 1 + call
  end
end


def two_sum? (arr, target)
  hash = {}
  arr.each do |num|
    hash[num] = target - num
  end
  hash.values.each do |value|
    return true if hash[value] unless hash[value] == value
  end
  false
end

