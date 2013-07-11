class SelectionSort


  def sort(arrayToSort)
   size=arrayToSort.length
   for i in 0..size-1
    imin=i
    for counter in i+1..size-1
     if arrayToSort[counter] < arrayToSort[imin]
      imin=counter
     end
    end
     if imin!=i
      temp = arrayToSort[imin]
      arrayToSort[imin] = arrayToSort[i]
      arrayToSort[i] = temp
     end
     printArrayOutput(arrayToSort,i)
   end
   return arrayToSort
  end

  def printArrayOutput(arrayToPrint , counter) 
   puts "After iteration " + counter.to_s + ":"
   p arrayToPrint
  end


end
