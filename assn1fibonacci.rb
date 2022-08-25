def fibs(num)
    if num == 0
        arr = [0]
    else
        arr = [0, 1]
        i = 2
        while i <= num
            arr = arr.push(arr[-1]+arr[-2])
            i+=1
        end
    end
    return arr
end

def fibs_rec(num)
    # Ok. The description wasn't clear. I was planning to return an array.
    # Recursive method should only be able to find the value it looks like.
    num < 2 ? num : (fibs_rec(num-1) + fibs_rec(num-2))
end


answer1 = fibs(8)
puts answer1.join(',')

answer2 = fibs_rec(8)
puts answer2