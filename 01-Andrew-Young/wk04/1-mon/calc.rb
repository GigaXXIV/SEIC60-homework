def show_menu
    puts "Calculator" # TODO: check out .center to make this look nicer. 
    puts "||" * 40
    puts "[a] - Addition"
    puts "[s] - Subtract"
    puts "[m] - Multiply"
    puts "[d] - Divide"
    puts "[q] - Quit"
    print "Enter Your Choice "
end

# METHODS FOR BASIC ARITHMETIC

def add(a, b)
    add_result = a + b
    puts "Answer = #{ add_result }"
end

def subtract(a, b)
    subtract_result = a - b
    puts "Answer = #{ subtract_result }"
end

def multiply(a, b)
    multiply_result = a * b
    puts "Answer = #{ multiply_result }"
end

def divide(a, b)
    divide_result = a / b
    puts "Answer = #{ divide_result }"
end

# STARTING MENU

show_menu
menu_choice = gets.chomp.downcase

#UNTIL LOOP WITH CASE STATEMENT

until menu_choice == "q"
    #do the thing the asked for
    
    case menu_choice
    when "a"
        puts "You chose ADDITION!"
        puts "Please enter first number"
        first_entry = gets.to_i
        puts "Please enter second number"
        second_entry = gets.to_i
        add(first_entry, second_entry)

    when "s"
        puts "You chose SUBTRACTION!"
        puts "Please enter first number"
        first_entry = gets.to_i
        puts "Please enter second number"
        second_entry = gets.to_i
        subtract(first_entry, second_entry)

    when "m"
        puts "You chose MULTIPLICATION!"
        puts "Please enter first number"
        first_entry = gets.to_i
        puts "Please enter second number"
        second_entry = gets.to_i
        multiply(first_entry, second_entry)
        
    when "d"
        puts "You chose DIVISION!"
        puts "Please enter first number"
        first_entry = gets.to_i
        puts "Please enter second number"
        second_entry = gets.to_i
        divide(first_entry, second_entry)
    
        #TODO: Perform the task
    #TODO: Add more "when" clauses
    else
        puts "Invalid selection. You idiot."

    end

    #show the menu again

    show_menu
    menu_choice = gets.chomp.downcase

end

puts "Thanks for using this crappy calculator"