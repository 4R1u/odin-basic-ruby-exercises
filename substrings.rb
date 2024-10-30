def substrings(word, substrings)
  substrings.reduce(Hash.new(0)) do |hash, substring|
    count = word.downcase.scan(substring.downcase).count
    if count > 0
      hash[substring] = count
    end
    hash
  end
end
