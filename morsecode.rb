# frozen_string_literal: true

MORSE_CODE_DICT = {
  'A' => '.-',     'B' => '-...', 'C' => '-.-.', 'D' => '-..',
  'E' => '.',      'F' => '..-.',   'G' => '--.',    'H' => '....',
  'I' => '..',     'J' => '.---',   'K' => '-.-',    'L' => '.-..',
  'M' => '--',     'N' => '-.',     'O' => '---',    'P' => '.--.',
  'Q' => '--.-',   'R' => '.-.',    'S' => '...',    'T' => '-',
  'U' => '..-',    'V' => '...-',   'W' => '.--',    'X' => '-..-',
  'Y' => '-.--',   'Z' => '--..',
  ' ' => ' '
}.freeze
def decode_word(word)
  word.split('   ').map do |i|
    i.split(' ').map do |j|
      MORSE_CODE_DICT.key(j) || i
    end.join('')
  end.join(' ')
end

puts decode_word('-- -.--   -. .- -- .')
puts decode_word('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
