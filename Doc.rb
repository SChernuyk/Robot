puts "Hello, I'm personal robotic system company Val-Tek, please, give me name"
name_r = gets
puts "Thank you, now my name is #{name_r}"
puts "I have the commands that I will perform for you to get\n a list of commands,enter 'command':"

class Command
  def drive_hand
    puts "'sound enable engine'"
    sleep 2
    puts "Complete"
  end

  def drive_foot
    puts "'sound enable engine'"
    sleep 2
    puts "Complete"
  end

  def open_eyes
    puts "'Sound of the closing flap'"
    sleep 2
    puts "Complete"
  end

  def enable_laser
    puts "System in perfect condition"
    puts "In order to shoot, write a shot"
    shoot"Laser"
  end

  def enable_mashinegun
    puts "System in perfect condition"
    puts "In order to shoot, write a shot"
    shoot"Mashinegun"
 end
  def russian_bad_word

  end
  def shoot(gun)
    answer = gets.chomp
    if answer == "shot"
      if gun =="Laser"
        sleep 2
        puts "POY"
      else
        sleep 2
        puts"Headshot"
      end
    end
  end

  def random_number
    x=rand(100)
    puts x
  end
end

command1 = Command.new

loop do

list_command = gets.chomp

  if list_command == "command"
    puts " 'drive hand',\n 'drive foot',\n 'open eyes',\n 'enable lazer',\n 'enable mashinegun',\n 'random number' 1-100 "

      else
    puts "Sorry,you say trash, I kill you!"
  end
puts "Write a command:"

answer = gets.chomp.split(" ").join("_")

command1.send(answer.to_sym)


puts "If you want another action, write the 'yes',else write 'exit' for turn off me"

continue = gets.chomp

  if continue == "yes"
    puts "write 'command':"
      next
  elsif continue == "exit"
      puts "Good bye, my darling"
    break
      puts "Ti cho,balnoy?"
  end
end

