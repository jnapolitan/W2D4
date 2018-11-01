def first_anagram?(str1, str2)
  result = []
  perm_arrays = str1.chars.permutation.to_a # O(n!)
  perm_arrays.each do |perm|
    result << perm.join("")
  end
  result.include?(str2)
end

def second_anagram?(str1, str2)
  str2_chars = str2.chars
  str1.chars.each do |ch|
    char_indx = str2_chars.find_index(ch) # O(n^2)
    return false if char_indx.nil?
    str2_chars.delete_at(char_indx)
  end
  str2_chars.empty?
end

def third_anagram?(str1, str2)  # O(n log n)
  str2_chars = str2.chars.sort
  str1_chars = str1.chars.sort
  str2_chars == str1_chars
end

def fourth_anagram?(str1, str2) #  O(n)
  str1_hash = Hash.new(0)
  str2_hash = Hash.new(0)
  str1.chars.each do |chr|
    str1_hash[chr] += 1
  end
  str2.chars.each do |chr|
    str2_hash[chr] += 1
  end
  str1_hash == str2_hash
end

def fourth_anagram_2?(str1, str2)
  hash = Hash.new(0)
  str1.chars.each do |ch|
    hash[ch] += 1
  end  
  str2.chars.each do |ch|
    hash[ch] -= 1
  end
  hash.values.all? {|value| value == 0}
end



