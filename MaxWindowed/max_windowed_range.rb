def max_windowed_range(arr, w)
  current_max_range = nil
  
  i = 0
  while i < (arr.length - w) + 1
    window = arr[i...i + w]
    current_range = window.max - window.min #O(n^2)
    if current_max_range.nil? || current_range > current_max_range
      current_max_range = current_range
    end
    
    i += 1
  end
    
  current_max_range
end