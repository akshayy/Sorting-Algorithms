class BucketSort
  def sort(array_to_sort)
   buckets = Array.new(12 ,0)
   array_to_sort.each do |item|
   buckets[item-1] += 1
  end
  p buckets
  sorted=[]
  
  buckets.each_index do |index|
   buckets[index].times {
   sorted.push(index+1)
   } 
  end

  p sorted
  end
end
