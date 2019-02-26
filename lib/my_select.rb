def my_select(collection)
  if block_given?
    new_array = []
    i = 0

    while i < collection.length
      new_array << collection[i] if yield(collection[i]) == true
      i = i + 1
    end
    new_array
  else
    "Hey! No block was given!"
  end
end
