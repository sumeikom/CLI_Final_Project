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
        
        puts "Hi #{name}! Welcome to the magical world of Studio Ghibli! You can search by film or by person, exit to exit" 
        menu
    end

    def menu 
        selection = user_input
        if selection.downcase == "film"
            print_film #extra code here like people, location, etc
        elsif selection.downcase == "person"
            print_person
        elsif selection.downcase == "exit"
            goodbye 
        else
            invalid 
        end
end
    

    def menu 
        selection = user_input
        if selection.downcase == "film"
            print_film #extra code here like people, location, etc
        elsif selection.downcase == "person"
            print_person
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

def print_film
        
    Film.all.each.with_index(1) do |film, index | 
        puts "#{index}. #{film.title}"
    end
    select_film
end

def select_film
    puts "Please enter the name of the film you would like to learn more information about."
    selection = user_input
    if Film.find_by_selection(selection)
        film = Film.find_by_selection(selection)
    else 
        film = selection
    end
    film_details(film)
    menu
end

def film_details(film) 
    # binding.pry
    if film == "exit"
        goodbye 
    elsif film.class == Film
        
    puts ""
    puts ""
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
   puts "Title: #{film.title}"
   puts ""
   puts "Description: #{film.description}"
   puts ""
   puts "Release date: #{film.release_date}"
   puts ""
   puts "Original title: #{film.original_title}"
   puts ""
   puts "Director: #{film.director}"
   puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
   puts ""
    puts ""
    puts "Would you like to search again by film, person or enter exit to exit"

    else 
        invalid 
    end
end

#____________________________________________________________________________________________________________________________________________________


def print_person
        
    Person.all.each.with_index(1) do |person, index| 
        puts "#{index}. #{person.name}"
    end
    select_person
end

def select_person
    puts "Please enter the name of the person you would like to learn more information about."
    selection = user_input
    if Person.find_by_selection(selection)
        person = Person.find_by_selection(selection)
    else 
        person = selection
    end
    person_details(person)
    # binding.pry
    menu
end


def person_details(person) 
     # binding.pry
    if person == "exit"
        goodbye 
    elsif person.class == Person
        
    puts ""
    puts ""
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
   puts "Name: #{person.name}"
   puts ""
   puts "Gender: #{person.gender}"
   puts ""
   puts "Age: #{person.age}"
   puts ""
   puts "Eye Color: #{person.eye_color}"
   puts ""
   puts "Hair Color: #{person.hair_color}"
   puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
   puts ""
    puts ""
    puts "Would you like to search again by film, person or enter exit to exit"

    else 
        invalid 
    end
end
end