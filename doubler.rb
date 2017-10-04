

def print_welcome
  puts "welcome to double"
end

def double_it(num, amount)
 num = num*2
  amount.times do |i|
     puts "ya I'll double that shit. it's #{num}"
     num = num*2
  end
  end
double_it(23,10)
