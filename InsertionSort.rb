class InsertionSort
  
 def sort(arrayToSort)
  size = arrayToSort.length
  for i in 1..size-1
   j = i
   # In insertion sort the while loop runs only until
   # the right location of element j is found.
   while j > 0 && arrayToSort[j] < arrayToSort[j-1] do
    temp = arrayToSort[j]
    arrayToSort[j] = arrayToSort[j-1]
    arrayToSort[j-1] = temp
    j = j-1 
   end

   printArrayOutput(arrayToSort,i)

  end
  
   return arrayToSort
   
 end  #end of method  

#method to print Array
  def printArrayOutput(arrayToPrint , counter)
   
   puts "After iteration " + counter.to_s + ":"
   p arrayToPrint

  end

end #end of class
