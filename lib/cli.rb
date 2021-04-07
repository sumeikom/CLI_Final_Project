class CLI 

    def intro
        puts "Welcome to the Studio Ghibli Database! What is your name?"
        input = user_input
    end

    def user_input
        gets.strip
    end

    def greet(user_input)
        puts "Hi #{name}! Welcome to the magical world of Studio Ghibli! Would you like to see a list of films? Enter yes to see list, exit to exit" 
        menu
    end

    def menu 
        selection = user_input
        if selection == "yes"
            print_films
        elsif selection == "exit"
            goodbye 
        else
            invalid 
        end
end

def goodbye
    puts "Thank you for visiting! See you soon!"
end

def invalid
    puts "Sorry, I didn't quite get that, could you try again?"
    menu
end

def print_films
        
    films.all.each.with_index(1) do |films, index | 
        puts "#{index}. #{films.name}"
    end
    select_films
end

def select_films
    puts "please enter the name of the film you would like to learn more information about."
    selection = user_input
    if films.find_by_selection(selection)
        films = Films.find_by_selection(selection)
    else 
        films = selection
    end
    films_details(films)
end

def films_details(films) 
    # binding.pry
    if films == "exit"
        goodbye 
    elsif films.class == Films
    puts ""
    puts ""
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
   puts "title: #{films.title}"
   puts "description: #{films.description}"
   puts "release_date: #{films.release_date}"
   puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
   puts ""
    puts ""
    puts "enter yes to learn more about a film or exit to exit"
#    :title, :description, :release_date
    else 
        invalid 
    end
    binding.pry
end
end