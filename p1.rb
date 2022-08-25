def factorial(input)
    result = 1
    if input <= 0
      return result
    else
      result = result*input*factorial(input-1)
    end
  end 
  
  puts "Factorial of 5 is #{factorial(5)}."
  puts "Factorial of 3 is #{factorial(3)}."

  # Define a recursive function that finds the factorial of a number.
  # https://www.codequizzes.com/computer-science/beginner/recursion