def substrings(word, substrings)
  substrings.downcase.reduce(Hash.new(0)) do |hash, substring|
    if word.downcase.include?(substring)
      hash[substring] += 1
    end
    hash
  end
end