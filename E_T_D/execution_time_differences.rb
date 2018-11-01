def my_min_1(list)
  min = nil
  
  list.each do |el1|
    list_dup = list.dup
    list_dup.delete(el1)
    min = el1 if list_dup.all? { |el2| el2 > el1 } # O(n^2)
  end
  
  min    
end

def my_min_2(list)
  min = list.first
  list.each { |el| min = el if min > el } # O(n)
  min
end

def largest_contiguous_subsum_1(arr)
  subs = []
  i = 0
  
  while i < arr.length
    j = i + 1
    
    while j < arr.length  # O(n^2)
      subs << arr[i..j]
      j += 1
    end
      
    i += 1
  end
  
  max = nil
  subs.each do |sub|
    if max.nil? || sub.reduce(:+) > max
      max = sub.reduce(:+)
    end
  end
  
  max  
end

def largest_contiguous_subsum_2(arr)   # O(n)
  total_sum = 0
  big_sum = arr.first
  arr.each do |num|
    total_sum += num
    big_sum = total_sum if total_sum > big_sum
    total_sum = 0 if total_sum < 0
  end
  big_sum
end

