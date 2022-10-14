#Build the #line method that shows everyone their current place in the line. 
#If there is nobody in line, it should say "The line is currently empty.".
#############################################################################


#Build a method that a new customer will use when entering the deli. 
#The #take_a_number method should accept two arguments, 
#the array for the current line of people (katz_deli), 
#and a string containing the name of the person joining the end of the line. 
#The method should call out (puts) the person's name along with their position 
#in line. 

#Top-Tip: Remember that people like to count from 1, 
#not from 0 like computers.
##############################################################################


#Build the #now_serving method which should call out (i.e. puts) the next 
#person in line and then remove them from the front. If there is nobody in line, 
#it should call out (puts) that "There is nobody waiting to be served!".
###############################################################################


#If the deli is empty, then display "The line is currently empty."
#Else, this variable will be "The line is currently:" (leaving it open-ended)
#I want you to go through each, starting at the first person. 
#Person and i are the two arguments
#Person and i (which is the counter) will get shoveled into our live_line variable
#Display the output of that. 

def line (deli)
    if deli.empty?
        puts "The line is currently empty."
    else
        live_line = "The line is currently:"
        deli.each.with_index(1) do |person, i|
            live_line << " #{i}. #{person}"
        end
        puts live_line
    end
end

#Here we are adding a person to the line. Our method is taking in two arguments (deli and name)
#The string we want to output should use interpolation for both name and deli.length
#We want to use the .length method because we want to check the entire list to give
#the next customer their number. 
#Use shovel method to add name of next person to list

def take_a_number(deli, name)
    deli << name
    puts "Welcome, #{name}. You are number #{deli.length} in line."
end


#If the deli is epmty the want the sting to display.
#Else, display the next sting.
#We then want to serve the first person in line and remove them from the queue. 
#So thats why you interpolate deli.first and then deli.shift to then remove them 
#from the queue

def now_serving(deli)
    if deli.empty?
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{deli.first}."
        deli.shift
    end
end