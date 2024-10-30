def substrings(word, substrings)
  substrings.reduce(Hash.new(0)) do |hash, substring|
    if word.include?(substring)
      hash[substring] += 1
    end
    hash
  end
end