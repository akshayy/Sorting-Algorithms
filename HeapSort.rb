class HeapSort
  attr_accessor :heapified_array

  def initialize
    @heapified_array = Array.new
  end

  def heapify(array_to_sort)
    
    array_to_sort.each do |element|
      @heapified_array.push(element)
      restore_heap_property_after_add(@heapified_array.length - 1)
    end

  end

  def restore_heap_property_after_add(index)
    #if index = 0 then its root element which does not
    #have any parent
    if index!=0
      index_of_parent = ((index - 1)/2 ).floor

      if @heapified_array[index_of_parent] < @heapified_array[index]
        @heapified_array[index_of_parent] , @heapified_array[index] = @heapified_array[index] , @heapified_array[index_of_parent]
        restore_heap_property_after_add(index_of_parent)
      end

    end
  end
  
  #we remove the first element
  #then pop the last element and 
  #put it at the root
  #we then restore the heap property
  def remove_first_element
    @heapified_array.delete_at(0) 

    if @heapified_array.length > 0
      @heapified_array.insert(0 , @heapified_array.pop)
      restore_heap_property_after_remove(0)
    end

  end
  
  def restore_heap_property_after_remove(index)
    index_of_largest_child = find_index_of_largest_child(index) 

    if index_of_largest_child != index
      @heapified_array[index],@heapified_array[index_of_largest_child]=@heapified_array[index_of_largest_child],@heapified_array[index]
      restore_heap_property_after_remove(index_of_largest_child)
    end   

  end
  
  def find_index_of_largest_child(index)
        
    #has no child so return index  
    return index if @heapified_array.length < 2 * index + 2

    # We only have one child, it is thus the greatest
    return 2 * index + 1 if @heapified_array.length == 2 * index + 2
         
    # We have two children
    if @heapified_array[2 * index + 1] > @heapified_array[2 * index + 2]
      return 2 * index + 1
    else
      return 2 * index + 2
    end
  end

  def sort(array_to_sort)
    heapify(array_to_sort)
    #heapified array contains the greatest element at its root
    #so we remove this root and insert it into another array
    #insert_at shifts the remaining array to its right
    sorted_array = Array.new
    
    while @heapified_array.length > 0
      sorted_array.insert(0 , @heapified_array.first) 
      remove_first_element   
    end
    
    return sorted_array
  end
 
end



