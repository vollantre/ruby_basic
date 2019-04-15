def fibs(n)
  ary = []
  (0..n).each do |num|
    if num < 2
      ary << num
    else
      ary << ary[num-1] + ary[num-2]
    end
  end
  ary[-1]
end

def fibs_rec(n)
  n < 2 ? n : fibs_rec(n-1) + fibs_rec(n-2)
end