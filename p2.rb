def palindrome?(sen)
    sen = sen.gsub(/\W/,'').downcase
    if sen.length > 1
      if sen[0]==sen[-1]
        palindrome?(sen[1..-2])
      else
        return false
      end
    else return true
    end
  end 
  
  string1 = "Stella won no wallets."
  string2 = "Hello Coaching Actuaries."
  
  puts "Sentence 1 should be palindrome. #{palindrome?(string1)}."
  puts "Sentence 2 should not be palindrome. #{palindrome?(string2)}."

  # Define a recursive function that returns true if a string is a palindrome and false otherwise.
  # https://www.codequizzes.com/computer-science/beginner/recursion