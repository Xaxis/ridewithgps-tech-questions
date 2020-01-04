# 1. Identify what the following ruby function does. arr is a sorted array.

# This method returns the index of passed `val` when found in sorrted
# array `arr`. Otherwise returns nothing/nil when `val` is not found
# in `arr`.
def mystery_method(arr, val, low=0, high=arr.length-1)

  # Returns nothing if array isn't passed, array length is 0, or when array
  # `low` index is greater than the `high` index.
  return nil if arr.nil? || arr.length == 0 || low > high

  # Determine the middle index
  mid = (low + high) / 2

  # When value at middle index is less than passed `val` recursively call
  # mystery_method with `low` index incremented by 1.
  if arr[mid] < val
    return mystery_method(arr, val, mid + 1, high)

  # When value at middle index is greater than passed `val` recursively call
  # mystery_method with `high` index decremented by 1.
  elsif arr[mid] > val
    return mystery_method(arr, val, low, mid - 1)

  # Otherwise `mid` is equal to the index of `val` and should be returned.
  else
    return mid
  end
end


# Test ground for the above

num_arr = Array[1,2,3,4,5]
result = mystery_method(num_arr, 1)

#let_arr = Array["a","b","c"]
#result = mystery_method(let_arr, "b")

puts result