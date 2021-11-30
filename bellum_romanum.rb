require 'pry'

VALID_ALLEGIANCES = ["Gaul", "Rome", "gaul", "rome", "Roman",  "roman", "r", "g", "R", "G"]

def valid_name?(string)
  alphabet = ('a'..'z').to_a << ('A'..'Z').to_a
  alphabet.flatten!

  string.chars.any? do |letter|
    alphabet.include?(letter)
  end

end

def help_message()
  speaking_prompt("Follow the prompts to continue your fight in this war. 
  You can always press H to check your health, 
  I to check your inventory,
  or type help to view this message.
  To quit the game at any time, press ^z.")
end

def credits()

  puts("     an ")
  puts("           ____    _____                       ")
  puts("    /\   / ____|  / ____|                      ")
  puts("   /  \ | |      | |  __  __ _ _ __ ___   ___  ")
  puts("  / /\ \| |      | | |_ |/ _` | '_ ` _ \ / _ \ ")
  puts(" / ____ \ |____  | |__| | (_| | | | | | |  __/ ")
  puts("/_/    \_\_____|  \_____|\__,_|_| |_| |_|\___| ")

  puts("           _____ _             _ _       ")
  puts("          / ____| |           | (_)      ")
  puts("         | (___ | |_ _   _  __| |_  ___  ")
  puts("          \___ \| __| | | |/ _` | |/ _ \ ")
  puts("          ____) | |_| |_| | (_| | | (_) |")
  puts("         |_____/ \__|\__,_|\__,_|_|\___/ ")

  puts("                     production")

  gets
  system("clear")

  puts(" Game Director / Programmer                 Graphic Designer           ")
  puts("      Annie Courney                              Annie Courney         ")
  puts("                                                                       ")
  puts("                                                                       ")
  puts(" Producer                                   Special Thanks To          ")
  puts("      Annie Courney                              Dan Carlin            ")
  puts("                                                 Julius Caesar         ")
  puts("                                                 Vercingetorix         ")
  puts(" Playtester                                                            ")
  puts("      Annie Courney                                                    ")
  puts("                                                                       ")
  puts("                                                                       ")
  puts("                                                                       ")
  puts(" This program was written entirely in Ruby                             ")

  gets
  system("clear")
end



def speaking_prompt(message)
  puts("==> #{message}")
end

def action_prompt(message)
  puts("** #{message} **")
end

def intro()
  system("clear")
  puts("In the year 58 BC...")
  gets
  system("clear")
  puts("Caesar waged war on the lands of Gaul...")
  gets
  system("clear")
  puts("Countless lives have been lost...")
  gets
  system("clear")
  puts("Countless others enslaved...")
  gets
  system("clear")
  puts("The Gauls must fight for their lives...")
  gets
  system("clear")
  puts("But can they overcome...")
  gets
  system("clear")

  puts("  ____       _ _                 ")
  puts(" |  _ \     | | |                ")
  puts(" | |_) | ___| | |_   _ _ __ ___  ")
  puts(" |  _ < / _ \ | | | | | '_ ` _ \ ")
  puts(" | |_) |  __/ | | |_| | | | | | |")
  puts(" |____/ \___|_|_|\__,_|_| |_| |_|")
  puts("                 _____                                             ")
  puts("                |  __ \                                            ")
  puts("                | |__) |___  _ __ ___   __ _ _ __  _   _ _ __ ___  ")
  puts("                |  _  // _ \| '_ ` _ \ / _` | '_ \| | | | '_ ` _ \ ")
  puts("                | | \ \ (_) | | | | | | (_| | | | | |_| | | | | | |")
  puts("                |_|  \_\___/|_| |_| |_|\__,_|_| |_|\__,_|_| |_| |_|")
                                                     
                                                          
  gets
  system("clear")
end

def inventory(supplies, item)
  supplies << item
end

def hit_box(body_part)
  hit = false
  chances = {
    "legs" => (0..40).to_a,
    "arms" => (0..30).to_a,
    "chest" => (0..70).to_a,
    "head" => (0..15).to_a
  }
  chance = (0..100).to_a.sample 

  if chances[body_part].include?(chance)
    hit = true
  end
end

def fight(player_health, supplies, enemy_health)
  player_damgage = 10
  enemy_damage = 10
  
  if supplies.include?("iron sword")
    player_damgage = player_damgage * 2
  end

  loop do
    first_strike = ["player", "enemy"].sample
    if first_strike == "player"
      speaking_prompt("You see an opening to attack.")
      speaking_prompt("Do you aim for the legs, head, arms, or chest?")
      aim  = gets.chomp

      case aim 
      when "legs"
        hit_box("legs")
      when "head"
        hit_box("head")
      when "arms"
        hit_box("arms")
      when "chest"
        hit_box("chest")
      else
        speaking_prompt("Please select the full word of the body part you're aiming for.")
      end

      if hit_box(aim)
        action_prompt("You strike for the #{aim}.")
        damage = (0..player_damgage).to_a.sample
        action_prompt("You deal #{damage} damage.")
        enemy_health = enemy_health - damage
        speaking_prompt("The enemy is at #{enemy_health} HP.")
      else
        action_prompt("You missed.")
        gets()
      end


    else
      aim = %w(arms legs chest head).sample
      speaking_prompt("The enemy attacks, and aims for your #{aim}.")
      
      if hit_box(aim)
        damage = (0..enemy_damage).to_a.sample
        action_prompt("The enemy dealt #{damage} damage.")
        player_health = player_health - damage
        speaking_prompt("Your health is #{player_health} HP.")
      else
        action_prompt("You parried")
        gets()
      end
      
    end

    break if player_health <= 0 || enemy_health <= 0
    
  end
  player_health
end

def roman_game(name, supplies, health)
  health = 100

  speaking_prompt("So the war begins... You fight for your leader, Julius Caesar")
  loop do 
    gets()
    loop do 
      speaking_prompt("Would you like to speak to your fellow soldiers (S), view your surroundings (V), or view your inventory (I)? (or hit (N) to skip)")
      action = gets.chomp

      case action
      when  "help"
        help_message
      when "i" || "I"
        speaking_prompt("In your possession, you have #{supplies}")
      when "h" || "H"
        speaking_prompt("You have #{health} HP.")

      when "s" || "S"
        speaking_prompt("Your fellow soldiers are listening to your commander's speech.")
      when "v" || "V"
        speaking_prompt("The sky is dotted by arrows, enemy legions fill the horizon, black and buzzing with the sounds of war.")
      when "i" || "I"
        speaking_prompt("In your possession, you have #{supplies}")
      when "n" || "N"
        break
      else
        speaking_prompt("Would you like to speak to your fellow soldiers (S), view your surroundings (V), or view your inventory (I)?")
      end

    end

    loop do
      speaking_prompt("Would you like to listen to your commander's speech? (Y/N)")
      action = gets.chomp

      case action 
      when  "help"
        help_message
      when "i" || "I"
        speaking_prompt("In your possession, you have #{supplies}")
      when "h" || "H"
        speaking_prompt("You have #{health} HP.")

      when  "y" || "Y"
        speaking_prompt("... countrymen, lend me your ears;
        We've come to bury the Gauls, not to bring many captives home to Rome.
        The evil that men do lives after them;
        The good is oft interred with their bones;
        So let it be with the Gauls")
        action_prompt("This speech inspires you")
        health += 10
        action_prompt("Your HP has increased by 10 points (it is now #{health.to_s})")
        gets()

        break

      when "n" || "N"
        break
      else
        ("Must select Y or N")
      end
    end

    speaking_prompt("The first battle begins.")
    gets()
  

    speaking_prompt("Two Gaulic soldiers rush toward you and your company.
    Do you go for the soldier on the left (L) or right (R)?
    Alternatively, do you try to escape the fight? (E)")
    action = gets.chomp()

    case action 
    when  "help"
      help_message
    when "i" || "I"
      speaking_prompt("In your possession, you have #{supplies}")
    when "h" || "H"
      speaking_prompt("You have #{health} HP.")

    when "l" || "L"
      speaking_prompt("As you get closer this soldier looms larger and larger.")
      health = fight(health, supplies, 50)
      speaking_prompt("You left that battle with #{health} HP.")
    when "r" || "R"
      speaking_prompt("This soldier is smaller than he seemed from afar.")
      health = fight(health, supplies, 30)
      speaking_prompt("You left that battle with #{health} HP.")
    when "e" || "E"
      speaking_prompt("You take this chance to escape")
    end


      

    # speaking_prompt("The first battle begins.")
    # gets()

    # speaking_prompt("Two Gaulic soldiers rush toward you and your company.
    # Do you go for the soldier on the left (L) or right (R)?
    # Alternatively, do you try to escape the fight? (E)")
    # action = gets.chomp()

    # case action
    # when "i" || "I"
    #   speaking_prompt("In your possession, you have #{supplies}")
    # when "l" || "L"
    #   speaking_prompt("As you get closer this soldier looms larger and larger.")
    # when "r" || "R"
    #   speaking_prompt("This soldier is smaller than you thought")

    
    break if gets.chomp() == "N" || "n"
  end

end



########## introduction ##########
# credits()
# intro()
speaking_prompt("Welcome to Bellum Romanum")
gets
system("clear")


########## choose allegiance ##########

allegiance = ""

loop do
  speaking_prompt("What is your allegiance?")
  speaking_prompt("Choose: Rome or Gaul.")
  allegiance = gets.chomp
  if VALID_ALLEGIANCES.include?(allegiance)
    break
  else
    speaking_prompt("Choose a side or meet your maker.")
  end
end

if allegiance.downcase.start_with?("r")
  allegiance = "Rome"
else
  allegiance = "Gaul"
end

########## state name ##########

name = ""

loop do
  speaking_prompt("What is your name, soldier?")
  name = gets.chomp.capitalize!
  if valid_name?(name)
    break
  else
    speaking_prompt("If we do not know your name, we cannot inform your family in the case of your death.")
  end
end

########## populate inventory and health ##########

health = 100
supplies = []
speaking_prompt("Here, #{name}, you will need this.")
action_prompt("You have been given an iron sword")

supplies = inventory(supplies, "iron sword")

########## game start ##########

if allegiance == "Rome"
  roman_game(name, supplies, health)
else
  speaking_prompt("This feature will be available in a future release of Bellum Romanum")
  speaking_prompt("Your allegiance has been changed to Rome")
  roman_game(name, supplies, health)
end

########## end ##########

speaking_prompt("The War Is Over")
