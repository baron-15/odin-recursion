def merge_sort(arr)
    if arr.length == 1
        return arr
    else
        arrLeft, arrRight = arr.each_slice((arr.size/2.0).round).to_a
        sortedLeft = merge_sort(arrLeft)
        sortedRight = merge_sort(arrRight)
        sortedList = []
        while ((sortedLeft.length > 0) & (sortedRight.length > 0))
            if sortedLeft[0] < sortedRight[0]
                sortedList = sortedList.push(sortedLeft[0])
                sortedLeft.shift
            else
                sortedList = sortedList.push(sortedRight[0])
                sortedRight.shift
            end
        end
        sortedList = sortedList.concat(sortedLeft).concat(sortedRight)
        return sortedList
    end
end

#Thanks to mittalrohit0598's inspiration to create a better simulation of random test cases
originalArray = []
rand(20).times do
  originalArray << rand(200)
end

sortedArray = merge_sort(originalArray)
p "The original array is #{originalArray}"
p "The sorted array is #{sortedArray}"