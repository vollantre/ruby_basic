def substrings (str, dictionary)
  hash = {}
    dictionary.each do |w|
      reg = Regexp.new(w, 1)
      hash[w] = str.scan(reg).size if (reg =~ str)
    end
  p hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)