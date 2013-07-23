class RadixSort
  def sort(array_to_sort)
    max_num = array_to_sort.max
    puts max_num
    num = max_num
    no_of_rounds =0;
    while (num >= 1)
      no_of_rounds+=1
      num = num/10
    end
    puts no_of_rounds

    hash_of_rounds = Hash.new
    no_of_rounds.times do |i| 
    hash_of_rounds[i]=Array.new
    end

    no_of_rounds.times do |i|
      arr = hash_of_rounds[i]
      for k in 0..9 do
        arr[k] = Array.new
      end 
    end
    base = 10
    no_of_rounds.times do |counter|
      array_from_hash = hash_of_rounds[counter]
      array_to_sort.each do |num|
        remainder = (num/base**counter).floor % base
        array_from_hash[remainder].push(num)
      end 
      array_to_sort = hash_of_rounds[counter].compact.flatten 
      p array_from_hash
    end

    sorted_array = hash_of_rounds.values_at(hash_of_rounds.length-1).compact.flatten
    puts "sorted array:"
    p sorted_array
    return sorted_array
  end
  
end
