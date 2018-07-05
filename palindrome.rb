class Palindrome

def palindrome?(word)
 word == word.reverse
end

#iterative solution ??

def reverse_word(word)
  counter = word.length
  reversed_word = []

  until counter == 0 do
    reversed_word << word[counter -1]
    counter-=1
  end

  reversed_word.join
end

def palindrome_bonus(word)
word_array = word
reverse_word(word) == word_array
end

#recursive solution

def palindrome_superbonus(word)
  if word.length == 1 || word.length ==0
    true
  else
    if word[0] == word[-1]
      palindrome_superbonus(word[1..-2])
    else
      false
    end
  end
end

end
