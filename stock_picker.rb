def stock_picker stocks
  pair = []
  
  if stocks.size < 2
    return "Please enter an array with a valid number of stocks"
  else
    stocks.
      each_with_index.
        to_a.
          combination(2).
            reduce(0) do |(val, acc), ((v1, idx1), (v2, idx2))|
            val < v2 - v1 ? [v2 - v1, [idx1, idx2]] : [val, acc]
    end
  end
end

p stock_picker([17,3,6,9,15,8,6,1,10])