class CLI 

    def intro
        puts "Welcome to the Studio Ghibli Database! What is your name?"
        input = user_input
        greet(input)
    end

    def user_input
        gets.strip
    end

    def greet(name)
        puts "Hi #{name}! Welcome to the magical world of Studio Ghibli! Would you like to see a list of films? Enter yes to see the list, exit to exit" 
        menu
    end

    def menu 
        selection = user_input
        if selection.downcase == "yes"
            print_films #extra code here like people, location, etc
        elsif selection.downcase == "exit"
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
        
    Films.all.each.with_index(1) do |films, index | 
        puts "#{index}. #{films.title}"
    end
    select_films
end

def select_films
    puts "Please enter the name of the film you would like to learn more information about."
    selection = user_input
    if Films.find_by_selection(selection)
        films = Films.find_by_selection(selection)
    else 
        films = selection
    end
    films_details(films)
    menu
end

def films_details(films) 
    # binding.pry
    if films == "exit"
        goodbye 
    elsif films.class == Films
        
    puts ""
    puts ""
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
   puts "Title: #{films.title}"
   puts ""
   puts "Description: #{films.description}"
   puts ""
   puts "Release date: #{films.release_date}"
   puts ""
   puts "Original title: #{films.original_title}"
   puts ""
   puts "Director: #{films.director}"
   puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
   puts ""
    puts ""
    puts "Enter yes to see the list again or enter exit to exit"

    else 
        invalid 
    end

end
end