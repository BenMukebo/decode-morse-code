$alphabet = { 
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D', 
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..'=> 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.---.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '/' => ' ',
}

def decode_char(char)
  letter_morse = $alphabet[char].upcase

  return letter_morse
end

puts decode_char(".-")

def decode_word(word)
  new_word = []

  split_word = word.split(' ')

  split_word.each do |letter|
    new_word.push(decode_char(letter))
  end

  return new_word.join
end

puts decode_word("-- -.--")

def decode(msg)
  new_msg = []

  split_msg = msg.split('   ')

  split_msg.each do |word|
    new_msg.push(decode_word(word))
  end

  return new_msg.join(' ')
end

puts decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...")

