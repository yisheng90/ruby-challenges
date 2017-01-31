$balance  = 4000

def withdraw
  puts "How much would you like to withdraw?"
  amount = gets.chomp.to_i
  puts ($balance > amount)? ($balance -= amount) : "You do not have sufficient fund."
  check_balance
end

def check_balance
  puts "Your current balance is #{$balance}"
  puts "Are you done?"
  status = gets.chomp
  (status == 'yes')? return "Thank You" : message
end

def deposit
  puts "How much would you like to deposit?"
  amount = gets.chomp.to_i
  $balance += amount
  check_balance
end

def message
    puts "Your current balance is #{$balance}"
    puts "What would you like to do?"
    action = gets.chomp

    case action
    when "withdraw"
      withdraw
    when "deposit"
      deposit
    when "check_balance"
      check_balance
    else
      puts "Please enter a valid action"
      message
    end
end

message
