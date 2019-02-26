def my_select(collection)
  if block_given?
    new_array = []
    i = 0

    while i < array.length
      new_array << array[i] if yield(array[i]) == true
      i = i + 1
    end
    new_array
  else
    "Hey! No block was given!"
  end
end
