def shift_char(char, number)
  char = char.ord
  if ((char >= 65 && char <= 90 - number) ||
     (char >= 97 && char <= 122 - number))
     # these numbers are the ASCII codes for A-(LIMIT), and a-(limit)
     char += number
  elsif ((char >= 90 - number && char <= 90) ||
    (char >= 122 - number && char <= 122))
    # for the ones that would go beyond "Z" or "z"
    char -= 26
    char += number
  else
    char = char
  end
  char
end


def caesar_cipher(string, number)
  string_array = string.split(//)
  string_array.map {|char| shift_char(char, number)}.map(&:chr).join("")
end
