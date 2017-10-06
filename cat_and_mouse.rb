# This is my submission for IO Avenue's Project1: Game On!  #
#  Rubyist:  Leslie Eckhart
# Date: 10/01/2017
# File: LEEgame.rb
# 
# Set-up variables:
#
blank_line = " "
#
mouse_1 = "~~~>^..^<"
mouse_2 = "                ~~~>^..^<"
mouse_3 = "                                   ~~~>^..^<"
mouse_4 = "                                                ~~~>^..^<"
mouse_5 = "                                         ~~~>^..^<"
mouse_6 = "                                                                        ~~~~>^..^<"
mouse_7 = "                                                                                 ~~~>^..^<"
mouse_8 = "                                                                                                            ~~~~>^..^<"
##
cat_1 = "(____==^..^=="
cat_2 = "                      (____==^..^=="
cat_3 = "                                        (____==^..^=="
cat_4 = "                                                            (____==^..^=="
cat_5 = "                                                                                  (____==^..^=="
cat_6 = "                                                                                                      (____==^..^=="
#
mouse_cat_1 = "~~~>^..^<    (____==^..^=="
mouse_cat_2 = "                               ~~~>^..^<   (____==^..^=="
mouse_cat_3 = "                                                                ~~~>^..^<      (____==^..^=="
mouse_cat_4 = "                                                                                              ~~~>^..^<   (____==^..^=="
#
cat_loves_mouse = "    (____==^..^==  LOVES  ~~~>^..^< "
#
ready_loop = false
game_loop = false
game_loop = false
cat_loop = false
mouse_loop = false 
#                        
reply_affirmative = ["YES", "yes", "Yes", "Y", "y", "OK", "ok", "Ok", "YEPPER", "absolutely", "You bet"]
reply_negative = ["NO", "no", "No", "N", "n", "DONE", "done", "Done", "gtg", "bye", "ciao"]
reply_cat = ["CAT", "Cat", "cat"]
reply_mouse = ["MOUSE", "Mouse", "mouse"]
reply_done = ["DONE", "Done", "done", "EXIT", "Exit", "exit", "QUIT", "Quit", "quit"]
num_answers = reply_affirmative.count
#
# Clear the screen:
i = 0 
while i < 34
    puts blank_line 
    i += 1 
end
#
puts "Welcome to Leslie's Cat-n-Mouse Game!"
puts "Are you ready to enter The House?  If so, type one of the following #{num_answers} answers:"
puts "   The list of possible answers is:"
print reply_affirmative
puts "Your response is: "
#
#********************************************
# Get first answer and evaluate:
#********************************************
ready_loop = false 
#
until ready_loop == true
#
    answer1 = gets.chomp
#     puts "answer = #{answer1}"
#
    if reply_affirmative.include? answer1
        message1 = "Excellent!  Let's begin..."
        message2 = "We have just entered The House."
        ready_loop = true
        next
    elsif reply_done.include? answer1
        message1 = "If you want to quit, type EXIT."
        message2 = blank_line
        ready_loop = true
    else
        message1 = "OK...so you are not quite ready..take a deep breath..."
        message2 = "When you are ready...Type OK, YES or YEPPER."
    end
#     puts blank_line
    puts message1
    puts message2
    print "Your response is: "
end # ready_loop
#
# puts "out of ready_loop; entering game_loop"
# puts blank_line
# puts blank_line
#
puts mouse_1
puts mouse_2
puts mouse_3
puts mouse_4
puts mouse_5
puts mouse_6
puts mouse_7
puts mouse_8
#
puts blank_line
puts blank_line
puts "Uh Oh!! Did you *see* something run through the room???"
puts blank_line
puts blank_line
puts mouse_8
puts mouse_7
puts mouse_6
puts mouse_5
puts mouse_4
puts mouse_3
puts mouse_2
puts mouse_1
#
puts blank_line
puts blank_line
puts "There it is again.....EEEEEEEEK!!!  A mouse!!!"
# puts blank_line
puts "I think we need a CAT to chase the mouse away!"
puts blank_line
puts "Type CAT if you want my cat to chase away the mouse."
puts "     Or type MOUSE if you prefer to see more of the mouse."
puts "     Or type MOUSE CHASES CAT if you prefer to see the mouse chase the cat. ;-) "
puts "     Or type DONE if you want to exit the game."
print "Your response is: "
#
##********************************************
# Main Game Loop
#********************************************
game_loop = true
game_loop_over = false
#
while game_loop == true and 
      game_loop_over == false
# Get  answer2 and evaluate:
    answer2 = gets.chomp
#    puts "answer2 = #{answer2}"
#
    case answer2
    when "CAT", "Cat", "cat"    
#     when reply_cat.include? answer2    
        puts "Here comes the cat!"
        puts cat_1
        puts cat_2
        puts cat_3
        puts cat_4
        puts cat_5
        puts cat_6
        puts "The mouse is trying to avoid the cat!"
        puts mouse_8
        puts mouse_7
        puts mouse_6
        puts mouse_5
        puts mouse_4
        puts mouse_3
        puts mouse_2
        puts mouse_1
        puts "The cat is after the mouse now!"
        puts cat_6
        puts cat_5
        puts cat_4
        puts cat_3
        puts cat_2
        puts cat_1
        puts "For more, type CAT, MOUSE, MOUSE CHASES CAT or DONE"
        print "Your response is: "
    when "MOUSE CHASES CAT"
        puts "Here comes the cat!"
        puts cat_1
        puts cat_2
        puts cat_3
        puts cat_4
        puts cat_5
        puts cat_6
        puts "Here comes the MOUSE AFTER THE CAT!"
        puts mouse_cat_1
        puts mouse_cat_2
        puts mouse_cat_3
        puts mouse_cat_4
        puts "Oh my!" 
        puts "For more, type CAT, MOUSE, MOUSE CHASES CAT or DONE"
        print "Your response is: "
    when "MOUSE", "Mouse", "mouse" 
#     when reply_mouse.include? answer2  
        puts "Here comes the mouse again!"
        puts mouse_1
        puts mouse_2
        puts mouse_3
        puts mouse_4
        puts mouse_5
        puts mouse_6
        puts mouse_7
        puts mouse_8
        puts "Oh my! There are more mice!"
        puts mouse_1
        puts mouse_2
        puts mouse_3
        puts mouse_4
        puts mouse_5
        puts mouse_6
        puts mouse_7
        puts mouse_8
        puts "For more, type CAT, MOUSE, MOUSE CHASES CAT or DONE"
        print "Your response is: "
    when "DONE", "Done", "done", "EXIT", "Exit", "exit", "QUIT", "Quit", "quit"
#     when reply_done.include? answer2
        game_loop_over = true
    else
        puts "Cannot decide?"
        puts "Type CAT, MOUSE, MOUSE CHASES CAT or DONE"
        print "Your response is: "
    end
end # game_loop
#
# puts "out of game_loop"
puts "Thank you for playing my Cat-n-Mouse Game!"
puts blank_line
puts "Cat LOVES Mouse!"
puts cat_loves_mouse
puts cat_loves_mouse
puts cat_loves_mouse
puts blank_line
puts "Bye-Bye!"
puts "So Long Fair Well!!"
# end-of-game

