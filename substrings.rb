def substrings(word, substrings)
  substrings.reduce(Hash.new(0)) do |hash, substring|
    hash[substring] = word.downcase
    .split(substring.downcase).length - 1
    hash
  end
end