#конвертайія римських цифри в ціле число
def roman_to_int(s)
    roman_numerals = {
        "I" => 1,
        "V" => 5,
        "X" => 10,
        "L" => 50,
        "C" => 100,
        "D" => 500,
        "M" => 1000
    }
    result = 0
    prev_value = 0
    
    s.chars.reverse_each do |char|
        value = roman_numerals[char]
        if value < prev_value
            result -= value
        else
            result += value
        end
        prev_value = value
    end
    result
end

#конвертація цілого числа в римське 
def int_to_roman(num)
    roman_numerals = {
        1000 => "M",
        900 => "CM",
        500 => "D",
        400 => "CD",
        100 => "C",
        90 => "XC",
        50 => "L",
        40 => "XL",
        10 => "X",
        9 => "IX",
        5 => "V",
        4 => "IV",
        1 => "I"
    }
    result = ""
    
    roman_numerals.each do |value, numeral|
        while num >= value
            result += numeral
            num -= value
        end
    end
    result
end

#римська цифра у ціле число та навпаки
roman_numeral = "IV"
number = 1666

converted_number = roman_to_int(roman_numeral)
converted_roman_numeral = int_to_roman(number)

puts "#{roman_numeral} перетворюється у число: #{converted_number}"
puts "#{number} перетворюється у римське число: #{converted_roman_numeral}"
