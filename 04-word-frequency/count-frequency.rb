def count_frequency(word_list)
  counts = Hash.new 0
  word_list.each { |word| counts[word] += 1 }
  counts
end

#p count_frequency %w(sparky the cat sat on the mat)
# --> {"sparky"=>1, "the"=>2, "cat"=>1, "sat"=>1, "on"=>1, "mat"=>1}
