class QuickSort
  def sortOutOfPlace(arrayToSort)
   size = arrayToSort.length
   
   if (size <=1)
    return arrayToSort
   end
   
   less = Array.new
   equal = Array.new
   greater = Array.new

   pivot = arrayToSort[rand(size-1)] #generating a random pivot
   puts "pivot is"
   puts pivot

   j=0 
   k=0
   l=0
   for i in 0..size-1
    
    if arrayToSort[i] <  pivot
     less[j]=arrayToSort[i]
     j=j+1
    end
    
    if arrayToSort[i] >  pivot
     greater[k]=arrayToSort[i]
     k=k+1
    end
    
    if arrayToSort[i] == pivot
     equal[l]=arrayToSort[i]
     l=l+1
    end

   end
   
   puts "less than pivot"
   p less
   
   puts "greater than pivot"
   p greater   
   
   puts "equal to pivot"
   p equal
   
   less = sortOutOfPlace(less)
   greater = sortOutOfPlace(greater)
   
   arr = (less.concat(equal)).concat(greater)
   puts "Array is:" 
   p arr
   return arr
  end

  
  def sortInPlace(arrayToSort)
   size = arrayToSort.length
   arrayToSort = sort(arrayToSort , 0 , size-1)  
   return arrayToSort     
  end

 def sort(arrayToSort, left, right)
   
  oldLeft = left     
  oldRight = right
 
  if left >= right
    return arrayToSort
  end
 
  pivot = arrayToSort[oldLeft] #generating a random pivot
  
  while left <= right 
   while arrayToSort[left] < pivot 
    left = left + 1
   end

   while arrayToSort[right] > pivot 
     right = right - 1 
   end
   
   if left <= right
    arrayToSort[left] , arrayToSort[right] = arrayToSort[right],arrayToSort[left]
    left = left + 1
    right = right - 1
   end
  end  
   
  sort(arrayToSort, oldLeft , right)
  sort(arrayToSort , left , oldRight)  
   
  return arrayToSort
  
 end
end
