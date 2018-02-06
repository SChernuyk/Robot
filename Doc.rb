class Command

  def initialize
    puts "Hello, I'm personal robotic system company Val-Tek, please, give me name"
    name_r = gets
    puts "Thank you, now my name is #{name_r}"
    puts "I have the commands that I will perform for you to get\n a list of commands,enter 'command':"
  end

  def drive(part_of_body)
    puts "'sound enable engine'"
  end

  def open(part_of_body)
    puts "'Sound of the closing flap'"
  end

  def action(method,part_of_body)
    if method == "drive"
      drive(part_of_body)
    else
      open(part_of_body) if part_of_body == "eyes"
    end
  end

  def enable(gun)
    puts "System in perfect condition"
    puts "In order to shoot, write a shot"
    shoot gun
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

  def random
    x=rand(100)
    puts x
  end
end

command1 = Command.new

list_command = gets.chomp

loop do

  if list_command == "command"
    puts " 'drive hand',\n 'drive foot',\n 'open eyes',\n 'enable lazer',\n 'enable mashinegun',\n 'random' 1-100 "
  else
    puts "Sorry,you say trash, I kill you!"
    puts "Write a command:"
    list_command = gets.chomp
    next
  end

  answer = gets.chomp.split(" ")

  case  answer[0]
    when "drive","open"
      command1.send(:action,answer[0], answer[1])
    when "enable"
      command1.send(:enable,answer[0])
    when "random"
      command1.send(:random)
    else
      puts "allo, vi sho, ebobo? ya boevoi robot"
      puts "Write a command:"
      list_command = gets.chomp
      next
  end

  sleep 2
  puts "Complete"

  puts "If you want another action, write the 'yes',else write 'exit' for turn off me"

  continue = gets.chomp

  if continue == "yes"
    puts "write 'command':"
    next
  elsif continue == "exit"
    puts "Good bye, my darling"
    break
  end
end

