module Enumerable
    def my_each
        for i in self
            yield(i)
        end
    end

    def my_each_with_index
        i = 0
        arr = []
        loop do
            arr << yield(self[i], i)
            i += 1            
            break if i > self.length-1
        end
        arr
    end

    def my_select
        arr = []
        self.my_each {|x| arr << x if yield(x)}
        arr
    end

    def my_all?
        self.my_each {|x| return false unless yield(x)}
        true
    end

    def my_any?
        self.my_each {|x| return true if yield(x)}
        false
    end

    def my_none?
        self.my_all? {|x| !yield(x)}
    end

    def my_count 
        res = 0
        self.my_each {|x| res += 1}
        res
    end

    def my_map(&block)
        ary = []
        self.my_each {|x| ary << block.call(x)}
        ary
    end

    def my_inject
        arr = self.to_a
        until arr.length == 1
            arr[0] = yield(arr[0], arr[1])
            arr.delete_at(1)
        end
        arr[0]
    end
end
