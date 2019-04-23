def caesar_cipher (str, key)
   str.codepoints.each_with_index do |code, idx|
        if code.between?(65,122) && !(91..96).include?(code)
            char = (code + (key % 26)).chr
            (char.ord.between?(65,122) && !(91..96).include?(char.ord)) ? str[idx] = char : str[idx] = (char.ord - 26).chr
        end
   end
   str
end