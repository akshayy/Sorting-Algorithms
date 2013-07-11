require 'test/unit'
require './BubbleSort.rb'
require './InsertionSort.rb'
require './SelectionSort.rb'
require './MergeSort.rb'
 
class SortTest < Test::Unit::TestCase
    @@unsorted = [5, 2, 3, 8, 1, 3, 12, 10, 11, 6]
    @@sorted = @@unsorted.sort
     
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
    
end
