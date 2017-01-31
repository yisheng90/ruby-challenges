print "What calculation would you like to do? (add, sub, mult, div)"
method = gets.chomp

print "What is number 1?"
num1 = gets.chomp.to_i

print "What is number 2?"
num2 = gets.chomp.to_i



def calculator num1, num2, method
  case method
  when "add"
    puts "Your result is #{num1 + num2}"
  when "sub"
    puts "Your result is #{num1 - num2}"
  when "mult"
    puts "Your result is #{num1 * num2}"
  when "div"
    puts "Your result is #{num1 / num2}"
  else
    puts "Please enter a valid method."
  end
end

calculator num1, num2, method
