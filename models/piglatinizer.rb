
class PigLatinizer 


def piglatinize(words)
 
  vowels = ["a", "A", "e", "E", "I", "i", "o","O", "U", "u"]
  pig_words = words.split(' ').map do |word|
    if(vowels.include? word[0])
      word + 'way'
    else
      parts = word.split(/([aeiou].*)/)

      if parts.length > 1
        parts[1] + parts[0] + 'ay'
      else
        word
      end  
    end
    end
    pig_words.join(' ')
  end
  
end