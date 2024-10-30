def shift_char_left(char, number)
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
  char.chr
end

def shift_char_right(char, number)
  char = char.ord
  if ((char >= 65 + number && char <= 90) ||
    (char >= 97 + number && char <= 122))
    # these numbers are the ASCII codes for (LIMIT)-Z, and (limit)-z
    char += number
  elsif ((char >= 65 && char <= 65  + number) ||
    (char >= 97 && char <= 97  + number))
    # for the ones that would go beyond "A" or "a"
    char += 26
    char -= number
  else
    char = char
  end
  char.chr
end

def caesar_cipher(string, number)
  string_array = string.split(//)
  string_array.map {|char| shift_char(char, number)}.join("")
end
