def merge_sort(arr)
    n = arr.length
    return arr if n < 2
    a = merge_sort(arr[0...(n/2)])
    b = merge_sort(arr[(n/2)..-1])
    p merge(a,b)
end

def merge(left, right)
    a = []
    until left.empty? || right.empty?
        a << (left[0] <= right[0] ? left.shift : right.shift)
    end
    a + left + right
end

p merge_sort([5,8,3,1,4,6,7,9])