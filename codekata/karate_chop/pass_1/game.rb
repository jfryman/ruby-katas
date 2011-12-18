class Game
  def chop(search, array)
    counter = -1
    array.each { |x| counter += 1; return counter if search == x; }
  end
end
