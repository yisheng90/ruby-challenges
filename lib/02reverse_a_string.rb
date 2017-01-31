

def reverse_string string
  for i in (0...(string.length/2))
    temp = string[i]
    string[i] = string[string.length-i-1]
    string[string.length-i-1] = temp
  end
  return string
end


def enter_a_stringprint
  print "Enter a string:"
  string = gets.chomp
  puts reverse_string string
end

enter_a_stringprint
