# Define the selection sort method
def selection_sort(arr)
    # Traverse through all array elements
    arr.length.times do |i|
      # Find the minimum element in the remaining unsorted array
      min_idx = i
      (i + 1...arr.length).each do |j|
        if arr[j] < arr[min_idx]
          min_idx = j
        end
      end
  
      # Swap the found minimum element with the first element
      arr[i], arr[min_idx] = arr[min_idx], arr[i]
    end
  end
  
  # Define the array
  array = [
    5, 5, 27, 34, 59, 97, 79, 23, 60, 87, 46, 90, 50, 57, 12, 85, 18, 63, 7, 44, 8, 47, 22,
    73, 62, 66, 100, 86, 50, 81, 6, 39, 81, 28, 46, 75, 70, 2, 31, 54, 41, 91, 1, 51, 58, 3, 97,
    50, 70, 87, 39, 43, 9, 5, 51, 100, 72, 42, 67, 98, 4, 40, 53, 1, 58, 69, 24, 96, 34, 20, 24, 56,
    98, 92, 2, 50, 49, 20, 22, 70, 53, 71, 31, 2, 56, 42, 51, 82, 3, 85, 78, 51, 42, 70, 62, 4, 74, 36,
    65, 94, 64, 66, 2, 54, 25, 53, 41, 88, 85, 61, 53, 93, 61, 6, 60, 15, 33, 55, 93, 93, 25, 78, 79,
    19, 82, 82, 63, 23, 88, 82, 88, 69, 35, 80, 93, 19, 89, 24, 5, 82, 30, 99, 68, 34, 16, 92, 16, 80,
    46, 53, 22, 39, 52, 8, 27, 36, 82, 50, 69, 39, 78, 70, 68, 1, 26, 40, 6, 1, 75, 48, 66, 51, 61, 80,
    50, 31, 90, 78, 93, 67, 76, 57, 26, 7, 94, 40, 9, 63, 28, 20, 71, 60, 75, 62, 63, 70, 36, 61, 77,
    63, 24, 25, 43, 26, 49, 80, 80, 31, 28, 37, 4, 75, 2, 73, 90, 33, 98, 97, 23, 82, 90, 42, 37, 58
  ]
  
  # Record the start time
  start = Time.now
  
  # Perform the selection sort
  selection_sort(array)
  
  # Record the end time
  end_time = Time.now
  
  # Calculate and print the runtime
  puts "Ruby runtime = #{(end_time - start) * 1000} ms"
  
  p array

  puts "End of Ruby Execution"
  
