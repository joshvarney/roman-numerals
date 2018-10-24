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
def arabic()
  arabic_stuff = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }
  return arabic_stuff
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
  if numerals.class != String
    return "Invalid Input"
  end
  numerals_array = numerals.split('')
  counter = 0
  numerals_array.each do |element|
    unless numerals_array[counter].class == Integer
      case element
      when "C"
        if numerals_array[counter + 1] == "M" || numerals_array[counter + 1] == "D"
          numerals_array[counter] = numerals_array[counter] + numerals_array[counter + 1]
          numerals_array[counter + 1] = 0
        end
      when "X"
        if numerals_array[counter + 1] == "C" || numerals_array[counter + 1] == "L"
          numerals_array[counter] = numerals_array[counter] + numerals_array[counter + 1]
          numerals_array[counter + 1] = 0
        end 
      when "I"
        if numerals_array[counter + 1] == "X" ||  numerals_array[counter + 1] == "V"
          numerals_array[counter] = numerals_array[counter] + numerals_array[counter + 1]
          numerals_array[counter + 1] = 0
        end 
      end
    end
    counter += 1
  end
  final_answer = 0
  numerals_array.each do |things|
    if things.class == String
      things = arabic[things]
    end
    final_answer += things
  end                    
  return final_answer
end
