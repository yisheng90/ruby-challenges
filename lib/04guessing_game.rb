$number = 30
$number_of_guess = 0
$prompt = 'This number is'

def check guess
  $number_of_guess += 1
  if guess === $number
    return true
  elsif guess > $number
    $prompt = "This number is higher than #{guess}. Guess again"
    return false
  else
    $prompt= "This number is lower than #{guess}. Guess again"
    return false
  end
end

def prompt
  guess = gets.chomp.to_i

  if (check guess) == true
    puts "You got it in #{$number_of_guess} tries"
  else
    puts $prompt
    prompt
  end

end


puts "Guess a number between 0 and 100"
prompt
