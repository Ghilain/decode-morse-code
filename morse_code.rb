def decode_char(char)
  morse_char = {
    A: '.-', B: '-...', C: '-.-.', D: '-..', E: '.',
    F: '..-.', G: '--.', H: '....', I: '..', J: '.---',
    K: '-.-', L: '.-..', M: '--', N: '-.', O: '---',
    P: '.--.', Q: '--.-', R: '.-.', S: '...', T: '-',
    U: '..-', V: '...-', W: '.--', X: '-..-', Y: '-.--', Z: '--..'
  }

  morse_char.key(char)
end

def decode_word(word)
  new_word = word.split
  word_result = new_word.map { |char| decode_char(char) }
  word_result.join
end

def decode_message(message)
  new_message = message.split('')
  message_result = new_message.map { |word| decode_word(word) }
  message_result.join('')
end

print decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
