require_relative '../lib/models/circuit.rb'
require_relative '../lib/models/exercise.rb'
require_relative '../lib/models/favorite.rb'
require_relative '../lib/models/user.rb'
require_relative '../lib/models/workout.rb'


def stars
  35.times do
    print "*"
  end
  puts "*"
end

def welcome
  print stars
  puts "***WELCOME TO FLATIRON GET FIT CLI***"
  puts "Are you a new or returning user?"
  puts "Please select from the following options:"
  puts "(n = new, r = returning, e = exit)"
  print stars
  print "Pick an option: "
end


def new_or_return(choice)
  case choice
    when "n"
      puts "Welcome new user"
      new_user
    when "r"
      puts "Welcome Back"
      returning_user
    when "e"
      puts "Thank you for stopping by. Goodbye!"
        abort
    else

      puts "Not a valid input. Please try again: "
      puts " *** r = return, n = new, e = Exit ***  "
      choice = gets.chomp
      new_or_return(choice)
    end

end

# def verify_user(id)
#   user = User.find(id)
#   name = User.find_by(first_name: id)
#   case id
#   when Integer
#       print "What would you like to do #{user.first_name}."
#     when
#
#     else
#     puts "Not a valid id, Please try again"
#   end
# end

#give returning users options access
#give new users option to create new
#end if they pressed e
def verify_user(lookup, pass, verify)
  case pass
    when verify
        puts "Welcome back #{lookup.first_name}"
    when "e"
      "Thank you for stopping by. Goodbye!!!"
      abort
    else
        puts "password does not match, please try again."
        try_again = gets.chomp
        verify_user(lookup, try_again, verify)
    end

end
<<<<<<< HEAD
=======


def new_user
  puts "Welcome New User! Please input your first name:"
    first_name = gets.chomp
        puts "Hello #{first_name}! Please input your last name:"
    last_name = gets.chomp
        puts "Please input a new password:"
    password = gets.chomp
        puts "Please verify password:"
    password_verification = gets.chomp
       until password_verification == password
         puts "Not the same password! Please try again:"

         password = gets.chomp
             puts "Please re-verify password:"
         password_verification = gets.chomp
       end
    puts "Welcome #{first_name} #{last_name}."
    User.create(first_name: first_name, last_name: last_name, password: password)
end

def returning(r_input)
  number = User.find(r_input)
  fname = User.find_by(first_name: r_input)
  if r_input == r_input.to_i && r_input == number.id
    user = User.find(r_input)

    print " Great to have you back #{user.first_name} #{user.last_name}"
  elsif r_input == r_input.to_s
    user = User.find_by(first_name: r_input)
    puts "Please provide your last name #{user}."
    last = gets.chomp
    full = User.find_by(first_name: r_input, last_name: last)
    puts "Great to have you back #{full.first_name} #{full.last_name}"
  else
    puts "That is not a valid option."
>>>>>>> 7cae84495cc6a4dfd08aa690c71ed9d90e8e6404

def returning_user
  puts "Please enter your first name: "
  first = gets.chomp
  puts "Please enter your last name. Example: Smith. "
  last = gets.chomp
  full = "#{first} #{last}"
  lookup = User.find_by(first_name: first, last_name: last)
  verify = lookup.password
  puts "Please enter your Password: "
  pass = gets.chomp
  verify_user(lookup, pass, verify)

end



def options_screen
  stars
  puts "What would you like to do?"
  puts "Please choose from the following options: "
  puts "1. See current workout programs."
  puts "2. See list of exercises by category."
  puts "3. Review your Favorite workouts."
  puts "4. Add a Workout to your Favorites."
  puts "5. Drop/Delete a Workout from your favorites"
  puts "6. Create your own Workout Program."
  puts "7. Add exercises to your Workout."
  stars

end




# def run

  welcome
  input = gets.chomp
  new_or_return(input)
  options_screen
  



  # new_user
  # returning_user





#
