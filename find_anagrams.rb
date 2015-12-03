# PSEUDOCODE
# INPUT: target word and array of words
# OUTPUT: array of all words that are anagrams of target word
# INITIALIZE result variable as empty array
# downcase target word
# iterate through array and if canonical form of element in array == canonical
#   form of target word, push that element to the result array.
# return result array.


# INITIAL

def find_anagrams( target_word, list_of_words )
  anagrams = []
  list_of_words.each{ |element|
    if anagram_canonical_form(element) == anagram_canonical_form(target_word)
      anagrams << element
    end
  }
  return anagrams
end

def anagram_canonical_form(word)
  word = word.downcase
  word.split('').sort
end
