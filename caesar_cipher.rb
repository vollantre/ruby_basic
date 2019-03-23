def caesar_cipher (str, key)
    abc = "abcdefghijklmnopqrstuvwxyz"
    lower = str.downcase
    chars = lower.split("")
    result = ""
    n = key % 26
    i = 0

    while (i < chars.size)
        if !abc.index(chars[i])
            result += chars[i]
        else
            currentIndex = abc.index(chars[i])
            newIndex = currentIndex + n
            newIndex = newIndex - 26 if (newIndex > 25)
            newIndex = newIndex + 26 if (newIndex < 0)

            if (str[i] == str[i].upcase)
                result += abc[newIndex].upcase
            else
                result += abc[newIndex]
            end
           
        end
        i+= 1
    end

    return result
end

caesar_cipher "Hello world", 3