require "pry"

def balanced(array)
  open_array = []
  close_array = []
  #Default is yes until otherwise determined
  balanced = "Yes"
  array.each do |symbol|
    #build new arrays of open and closed brackets
    if (symbol == "{" || symbol == "[" || symbol == "(")
      open_array.push(symbol)
    elsif (symbol == "}" || symbol == "]" || symbol == ")")
      close_array.push(symbol)
    else
      balanced = "No"
    end
  end
  balanced_array = []
  open_array.each_index do |index|
    #if the current bracket being evaluated in the open array matches the
    #opposite of the reverse index of the closed array, it's balanced
    if open_array[index] == "{" && close_array[(index + 1) * -1] == "}" ||
      open_array[index] == "(" && close_array[(index + 1) * -1] == ")" ||
      open_array[index] == "[" && close_array[(index + 1) * -1] == "]"
      balanced_array << "Yes"
    else
      balanced = "No"
    end
  end
  balanced
end

array1 = ["(","(","{","}",")",")"]
array2 = ["(","[","}",")"]
array3 = [")","{"]
array4 = ["S"]
array5 = []

Pry.start

