class MergeSort
 def sort(arrayToSort)
   size = arrayToSort.length
   if size <=1
    puts "now will call the right side."
    return arrayToSort
   end

   mid = (size/2).round
   puts "mid is :" + mid.to_s
   
   #this will return the sliced array into 'right' whereas arrayToSort will contain
   #the remaining part
   right = arrayToSort.slice!(mid..arrayToSort.length)    
      
   puts "left array is:"
   p arrayToSort
   puts "right array is:"
   p right
    
   leftSortedArray = sort(arrayToSort)
   puts "left Sorted array is:"
   p leftSortedArray
   rightSortedArray = sort(right)
   puts "right Sorted array is:"
   p rightSortedArray  

   merged = merge(leftSortedArray,rightSortedArray) 
   puts "merged array is"
   p merged
   puts "\n\n"
   return merged
 end

 def merge(leftSortedArray, rightSortedArray)
  leftSize = leftSortedArray.length
  rightSize = rightSortedArray.length
  
  i=0
  j=0
  k=0;
  
  result=Array.new
  while i < leftSize && j < rightSize do
   if leftSortedArray[i] <= rightSortedArray[j]
     result[k]=leftSortedArray[i]
     k=k+1
     i=i+1
   else
     result[k]=rightSortedArray[j]
     k=k+1
     j=j+1
   end
  end 
  
  if i!=leftSize
   while i!=leftSize do #untill left array exhausts, copy it into the result
   result[k] = leftSortedArray[i]
   k=k+1
   i=i+1
   end
  end

  if j!=rightSize
   while j!=rightSize do #until right array exhausts ,copy it into the result.
   result[k] = rightSortedArray[j]
   k=k+1
   j=j+1
   end
  end
  
  return result
 end

end
