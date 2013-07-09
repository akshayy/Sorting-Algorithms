class BubbleSort

#Method to sort array  
  def sort(arrayToSort)

   size = arrayToSort.length  
   
   #for n-1 iterations
   (1..size-1).reverse_each {|counter|  

    #We only iterate upto counter -1 because with every iteration, highest element bubbles out
    #to the end of the array , so we have one less element to sort everytime.so as counter goes from 9,8,7...1  ---
    #inner loop runs 9, 8..1 times respectively

    for i in 0..counter-1

     if(arrayToSort[i] > arrayToSort[i+1])

      temp = arrayToSort[i]
      arrayToSort[i] = arrayToSort[i+1]
      arrayToSort[i+1] = temp

     end
     
    end
   
    printArrayOutput(arrayToSort,counter)
  
  } #end of loop
  return arrayToSort
 
  end #end of function

#method to print Array
  def printArrayOutput(arrayToPrint , counter)
   
   puts "After iteration " + (10-counter).to_s + ":"
   p arrayToPrint

  end

end #end of class


