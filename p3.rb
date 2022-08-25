def beer(num)
    if num >= 1
      num == 1 ? st = "" : st = "s"
      puts "#{num} bottle#{st} of beer on the wall"
      beer(num - 1)
    else
      puts "no more bottles of beer on the wall"
      return
    end
  end 
  
  beer(6)
  # Define a recursive function that takes an argument n and prints "n bottles of beer on the wall", "(n-1) bottles of beer on the wall", ..., "no more bottles of beer on the wall".
  # https://www.codequizzes.com/computer-science/beginner/recursion