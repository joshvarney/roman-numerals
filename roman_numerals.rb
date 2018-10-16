def letters()
  roman_stuff = {
    1 => "I",
    2 => "II",
    3 => "III",
    4 => "IV",
    5 => "V",
    9 => "IX",
    10 => "X" 
  }
  return roman_stuff
end
def roman_converter(number)
  number = number
  answer = ""
  answer << letters()[number]
  return answer
end  