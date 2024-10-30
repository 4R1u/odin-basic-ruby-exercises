def substrings(word, substrings)
  substrings.reduce(Hash.new(0)) do |hash, substring|
    if word.downcase.include?(substring.downcase)
      hash[substring] += 1
    end
    hash
  end
end