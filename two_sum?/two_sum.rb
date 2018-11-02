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

def okay_two_sum?(arr, target) # O(n log n)
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


def two_sum? (arr, target) # O(n)
  hash = {}
  count = Hash.new(0)
  
  arr.each do |num|
    hash[num] = target - num
    count[num] += 1
  end

  hash.values.each do |value|  
    if hash[value]
      
      if value == hash[value]
        return true if count[value] > 1
      else
        return true
      end
      
    end
  end
  
  false
end

