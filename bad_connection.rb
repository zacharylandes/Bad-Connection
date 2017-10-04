class Caller
  def initialize (input)
    @input = input
    $hello = []
    $down = []
    $up = []
    $goodbye = []
  end
  def hello #starts with hello
    puts "HELLO?!"
    @input = gets.chomp
      runskies()
  end
  def runskies #runs appropriate method depending on input
    @ready_to_quit = false
    until @ready_to_quit == true
      if @input.empty? == true
        puts "HELLO?!"
        $hello << ""
        @input = gets.chomp
      elsif @input == "Print Log"
              log()
              return
      elsif @input =~ /[a-z]/
        $down << @input
        down()
      elsif   @input == "GOODBYE!"
        goodbye()
          return
      elsif @input = @input.upcase
        $up << @input
        up()
      end
    end
  end
  def down #runs if there is a lowercase letter
    puts "I AM HAVING A HARD TIME HEARING YOU"
    @input = gets.chomp
  end
  def up #runs if it's all uppercase
    puts 'NO, THIS IS NOT A PET STORE'
    @input = gets.chomp
  end
  def goodbye #runs if the user says goodbye
    $goodbye << @input
    puts "ANYTHING ELSE I CAN HELP WITH?"
    @input = gets.chomp
      if @input == "GOODBYE!"
        puts "THANK YOU FOR CALLING!"
        @ready_to_quit == true
      else
        runskies()
      end
  end
def log
  if $hello.length > 0
    p $hello
    p "output #{$hello.length} times"
  end
  if $up.length > 0
      p $up
      p "output #{$up.length} times"
  end
  if $down.length > 0
     p $down
     p "output #{$down.length} times"
  end
  if $goodbye.length > 0
    p $goodbye
    p "output #{$goodbye.length} times"
  end
end
end
c = Caller.new("hello")
c.hello
#
#   puts "HELLO?!"
#   question = gets.chomp
#   ready_to_quit = false
#   until ready_to_quit == true
#     if question.empty? == true
#       puts "HELLO?!"
#       question = gets.chomp
#     elsif question =~ /[a-z]/
#       puts "I AM HAVING A HARD TIME HEARING YOU"
#       question = gets.chomp
#     elsif   question == "GOODBYE!"
#       puts "ANYTHING ELSE I CAN HELP WITH?"
#       question = gets.chomp
#         if question == "GOODBYE!"
#           puts "THANK YOU FOR CALLING!"
#           ready_to_quit == true
#         return
#       end
#     elsif question = question.upcase
#       puts 'NO, THIS IS NOT A PET STORE'
#       question = gets.chomp
#     end
#   end
# end
# caller()
