def stock_picker stocks
  res = stocks.each_with_index.with_object([]) do |(buy_val, i), res|
    highest_val = stocks[i..].max
    highest_idx = stocks[i..].each_with_index.max[1] + i
    res << [highest_val - buy_val, i, highest_idx]
  end.max_by(&:first)
end

p stock_picker([17,3,6,9,15,8,6,1,10])