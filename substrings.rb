def substrings(word, substrings)
  substrings.reduce(Hash.new(0)) do |hash, substring|
    # if word.downcase.include?(substring.downcase)
    #   hash[substring] += 1
    # end
    hash[substring] = word.downcase
    .split(substring.downcase).length - 1
    hash
  end
end