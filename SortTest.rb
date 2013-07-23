require 'test/unit'
require './BubbleSort.rb'
require './InsertionSort.rb'
require './SelectionSort.rb'
require './MergeSort.rb'
require './QuickSort.rb'
require './HeapSort.rb'
require './BucketSort.rb'
require './RadixSort.rb'
 
class SortTest < Test::Unit::TestCase
    @@unsorted = [5, 2, 3, 8, 1, 3, 12, 10, 11, 6]
    @@unsorted_for_radix = [39,52,48,14,6,85,23,75,91,7]
    @@sorted = @@unsorted.sort
    @@sorted_for_radix = @@unsorted_for_radix.sort
    
    def test_bubble_sort  
        puts "Running test for bubble sort"
        puts "unsorted Array"
        p @@unsorted     
        bubble_sort = BubbleSort.new
        result = bubble_sort.sort(@@unsorted)
         
        assert_equal @@sorted, result
        puts "End of test\n\n"
        @@unsorted = @@unsorted.shuffle
    end

    def test_insertion_sort
        puts "running test for insertion sort"
        puts "unsorted Array"
        p @@unsorted
        insertion_sort = InsertionSort.new
        result = insertion_sort.sort(@@unsorted)
     
        assert_equal @@sorted,result
        puts "End of test\n\n"
        @@unsorted = @@unsorted.shuffle
    end
    
    def test_selection_sort
        puts "running test for Selection sort"
        puts "unsorted Array"
        p @@unsorted
        selection_sort = SelectionSort.new
        result = selection_sort.sort(@@unsorted)
     
        assert_equal @@sorted,result
        puts "End of test\n\n"
        @@unsorted = @@unsorted.shuffle
    end

    def test_merge_sort
        puts "running test for Merge sort"
        puts "unsorted Array"
        p @@unsorted
        merge_sort = MergeSort.new
        result = merge_sort.sort(@@unsorted.dup)
     
        assert_equal @@sorted,result
        puts "End of test\n\n"
        @@unsorted = @@unsorted.shuffle
    end    

    def test_quick_sort
        puts "running test for Quick Sort"
        puts "unsorted Array"
        p @@unsorted
        quick_sort = QuickSort.new
        result = quick_sort.sortOutOfPlace(@@unsorted.dup)
        assert_equal @@sorted,result
        @@unsorted = @@unsorted.shuffle 

        result = quick_sort.sortInPlace(@@unsorted.dup)
        assert_equal @@sorted,result
        puts "End of test\n\n"
        @@unsorted = @@unsorted.shuffle
    end

   def test_heap_sort
        puts "running test for Heap sort"
        puts "unsorted Array"
        p @@unsorted
        heap_sort = HeapSort.new 
        result = heap_sort.sort(@@unsorted.dup)
        assert_equal @@sorted,result
        puts "End of test\n\n"
        @@unsorted = @@unsorted.shuffle
    end    

    def test_bucket_sort
        puts "running test for bucket sort"
        puts "unsorted Array"
        p @@unsorted
        bucket_sort = BucketSort.new 
        result = bucket_sort.sort(@@unsorted.dup)
        assert_equal @@sorted,result
        puts "End of test\n\n"
        @@unsorted = @@unsorted.shuffle
    end  
 
    def test_radix_sort
        puts "running test for radix sort"
        puts "unsorted Array"
        p @@unsorted_for_radix
        radix_sort = RadixSort.new 
        result = radix_sort.sort(@@unsorted_for_radix.dup)
        assert_equal @@sorted_for_radix,result
        result = radix_sort.sort(@@unsorted.dup)
        assert_equal @@sorted,result
        puts "End of test\n\n"
        @@unsorted = @@unsorted.shuffle
    end

end
