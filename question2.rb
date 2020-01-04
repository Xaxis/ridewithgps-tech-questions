# 2. Now that you've seen and identified the recursive version of the problem, rewrite
# it in an iterative style.

# This method implements a binary search in an iterative fashion, returning the position
# of an element (its index) in a sorted array.
def mystery_method_iterative(arr, val)

  # Returns nothing if no array or an empty array is passed
  return nil if arr.nil? || arr.length == 0

  # Determine middle, "low" index, and "high" index points
  mid = arr.length / 2
  l = 0
  h = arr.length - 1

  # Iterate through the extent of indices in the array starting at the beginning
  while l <= h

    # First check, does value at middle index equal our target `val`, if so return for a
    # quick win. Index found.
    if arr[mid] == val
      return mid

    # Second, is our middle index's value less than target `val`, check the first half
    # of the array.
    elsif arr[mid] < val
      l = mid + 1
      mid = (l + h) / 2

    # Otherwise, check the second half of the array
    else
      h = mid - 1
      mid = (l + h) / 2
    end

  end

  return mid
end


# Test ground for the above

sorted_arr = Array[11,22,33,44,55,66]
result = mystery_method_iterative(sorted_arr, 44)

puts result