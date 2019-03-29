def is_sorted? ary
    ary == ary.sort
end


def bubble_sort array
    until is_sorted?(array) do
        i = 1
        while i < array.size
            array[i-1], array[i] = array[i], array[i-1] if array[i-1] > array[i]
            i+= 1
        end
    end
    array
end

def bubble_sort_by array
  array.length.times do |i|
    array.length.times do |j|
      if yield(array[j], array[i]) > 0
        array[i], array[j] = array[j], array[i]
      end
    end
  end
  array
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end