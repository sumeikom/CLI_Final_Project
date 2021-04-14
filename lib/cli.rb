class CLI 

    def intro
        API.get_data
        API.get_data_people
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
            print_films #extra code here like people, location, etc
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
            print_films #extra code here like people, location, etc
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