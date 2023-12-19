def caesar_cipher(string, shift_factor = 3)
    print "Input: "
    p string
    print "Shift Factor: "
    puts shift_factor
    string = string.split("")

    string = string.map do |char|
        if char.ord >=65 && char.ord <=90
            char = char.ord
            char += shift_factor
            char -= 26 if char > 90
            char += 26 if char < 65
            char.chr
        elsif char.ord >= 97 && char.ord <= 122
            char = char.ord
            char += shift_factor
            char -= 26 if char > 122
            char += 26 if char < 97
            char.chr
        else
            char
        end
    end

    string = string.join("")
    print "Output: "
    p string
    string
end
