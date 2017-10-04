
def print_welcome
  puts "welcome to converter"
end

def convert_to_celsius(degrees_fahrenheit)
  ((degrees_fahrenheit-32)* 5.0/9.0).round(2)
end
def print_converted(temperature)
  converted=convert_to_celsius(temperature)
  puts "#{temperature} is equal to #{converted} degrees celcius"
end

def convert(first,second,third)
 print_welcome
 print_converted(first)
 print_converted(second)
 print_converted(third)
end
convert(12,34,56)
