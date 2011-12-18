class Game
  def chop(search, array)
    return self.bSearch(search, array, 0, array.length - 1)
  end

  def bSearch(search, array, low, high)
    return -1 if high < low
    mid = (low + high) / 2

    if array[mid] > search
      self.bSearch(search, array, low, mid - 1)
    elsif array[mid] < search
      self.bSearch(search, array, mid + 1, high)
    else
      return mid
    end
  end
end

#In computer science, a binary search or half-interval search algorithm finds the position of a specified value (the input "key") within a sorted array[1][2]. At each stage, the algorithm compares the input key value with the key value of the middle element of the array. If the keys match, then a matching element has been found so its index, or position, is returned. Otherwise, if the sought key is less than the middle element's key, then the algorithm repeats its action on the sub-array to the left of the middle element or, if the input key is greater, on the sub-array to the right. If the remaining array to be searched is reduced to zero, then the key cannot be found in the array and a special "Not found" indication is returned.
