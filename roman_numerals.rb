def letters()
  roman_stuff = {
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
  return roman_stuff
end
def roman_converter(number)
  number = number
  answer = ""
  letters().each do |key, value|
    unless number < key
      stuff = number / key
      things = number % key
      if stuff > 0
        stuff.times do
          answer << value
        end
        number = things
      end    
    end  
  end
  return answer
end
def arabic_converter(numerals)
  numerals = numerals
  numerals_array = numerals.split('')
  p numerals_array
  return numerals_array
   
end