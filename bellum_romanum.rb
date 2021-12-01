require 'pry'

VALID_ALLEGIANCES = ["Gaul", "Rome", "gaul", "rome", "Roman",  "roman", "r", "g", "R", "G"]

def valid_name?(string)
  alphabet = ('a'..'z').to_a << ('A'..'Z').to_a
  alphabet.flatten!

  if string.nil?
    false
  else
    string.chars.any? do |letter|
      alphabet.include?(letter)
    end
  end
end

def help_message()
  speaking_prompt("Follow the prompts to continue your fight in this war. 
  You can always press H to check your health, 
  I to check your inventory,
  or type help to view this message.
  To quit the game at any time, press ^z.")
end

def gametips()
  speaking_prompt("Follow the prompts to continue your fight in this war. 
  You can always press H to check your health, 
  I to check your inventory,
  or type help to view this message.
  To quit the game at any time, press ^z.
  To win the game you must win 5 battles in the Gallic war.
  
  IMPORTANT RULES
    1. if the screen goes blank, just press return
    2. if a prompt asks you to type in a full word, type it in with no typos or the game will break and exit
    3. you cannot save
    4. your choices do matter, and it's possible to lose. Try to protect your life.")
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

def roman_battle_1(name, supplies, health)
  speaking_prompt("The first battle begins.")
  gets()
  
  loop do 
    speaking_prompt("Two Gallic soldiers rush toward you and your company.
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
      break
    when "r" || "R"
      speaking_prompt("This soldier is smaller than he seemed from afar.")
      health = fight(health, supplies, 30)
      speaking_prompt("You left that battle with #{health} HP.")
      break
    when "e" || "E"
      speaking_prompt("You take this chance to escape")
    else 
      speaking_prompt("You must take action.")
    end

  break if health <= 0 
  end
  health 
end

def roman_nervii_ambush(name, supplies, health)
  speaking_prompt("You've won your first battle, and your company makes its way north.")
  gets
  system("clear")

  loop do
    speaking_prompt("Would you like to view your surroundings (v), talk to your fellow soldiers (t), or search around for supplies (s)? (skip with (n)).")
    action = gets.chomp()

    case action
    when "help"
      help_message
    when "i" || "I"
      speaking_prompt("In your possession, you have #{supplies}")
    when "h" || "H"
      speaking_prompt("You have #{health} HP.")
    when "v" || "V"
      speaking_prompt("Your company is setting up camp along the river Sambre")
      gets
      system("clear")
    when "t" || "T"
      speaking_prompt("The soldier next to you says, 'We've detected a small band of Gauls ahead, we're sending in a light cavalry.'")
      gets
      system("clear")
    when "s" || "S"
      speaking_prompt("Someone sees you searching for supplies and hands you a small kit.")
      action_prompt("You have been given a first aid kit.")
      health += 20
      action_prompt("Your HP has increased by 20 points (it is now #{health.to_s})")
      gets
      system("clear")
    when "n" || "N"
      break
    else
      speaking_prompt("You must take action")
    end
  end

  speaking_prompt("Your commander is asking soldiers to join either a light cavalry or an infantry force to defeat a small band of Gauls.")
  
  loop do 
    speaking_prompt("Which force would you like to join? (cavalry or infantry)")
    speaking_prompt("TYPE THE FULL WORD OR THE GAME BREAKS")
    choice = gets.chomp()
    case choice
    when "cavalry"
      action_prompt("You have joined the cavalry.")
      action_prompt("You are now in possesion of a horse.")
      supplies = inventory(supplies, "horse")
      gets
      system("clear")
    when "infantry"
      action_prompt("You have joined the infantry.")
      gets
      system("clear")
    else
      speaking_prompt("You must pick your fight.")
    end

    if choice == "cavalry"
      speaking_prompt("You begin to cross the river with your band...")
      gets
      system("clear")
      speaking_prompt("From all directions, the enemy surrounds you, taking advantage of the fact
      that your commander didn't set up an infantry screen to protect your entrenching force.")
      gets
      system("clear")
      speaking_prompt("Before the Romans can get even two legions across the river, 60,000 Gallic fighters ambush you.
      The infantry is coming to help. For now, you are at a disadvantage.")
      health = cavalry_fight(health, supplies, 75)
      speaking_prompt("You left that battle with #{health} HP.")
      gets
      system("clear")
      break
    else
      speaking_prompt("The cavalry leads the way across the river, while the infantry hangs behid.")
      gets
      system("clear")
      speaking_prompt("From afar, you watch as the cavalry forces are surprised by an attack on all sides
      by a force of Gauls, 60,0000 men strong.")
      gets
      system("clear")
      speaking_prompt("The cavalry was attacked off-guard, but your commander, Julius Caesar, joins the infantry
      to bolster the Roman forces. You are at a slight advantage in this fight.")
      gets
      system("clear")
      health = fight(health, supplies, 55)
      speaking_prompt("You left that battle with #{health} HP.")
      gets
      system("clear")
      break
    end

    if health <= 0 
      action_prompt("You have died honorably defending your empire.")
      break
    end

  end
  health
end

def hit_box(body_part)
  hit = false
  chances = {
    "legs" => (0..40).to_a,
    "arms" => (0..30).to_a,
    "chest" => (0..70).to_a,
    "head" => (0..15).to_a,
    "trample" => (0..50).to_a
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
      system("clear")
      speaking_prompt("You see an opening to attack.")

      loop do 
        speaking_prompt("Do you aim for the legs, head, arms, or chest?")
        speaking_prompt("TYPE THE FULL WORD OR THE GAME BREAKS")
        aim = gets.chomp
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
          system("clear")
          action_prompt("You strike for the #{aim}.")
          damage = (0..player_damgage).to_a.sample
          action_prompt("You deal #{damage} damage.")
          enemy_health = enemy_health - damage
          speaking_prompt("The enemy is at #{enemy_health} HP.")
          gets()
          break
        else
          action_prompt("You missed.")
          break
        end
      end


    else
      aim = %w(arms legs chest head).sample
      system("clear")
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


def cavalry_fight(player_health, supplies, enemy_health)
  player_damgage = 15
  enemy_damage = 15
  
  if supplies.include?("iron sword")
    player_damgage = player_damgage + 5
  end

  loop do
    first_strike = ["player", "enemy"].sample
    if first_strike == "player"
      system("clear")
      speaking_prompt("You see an opening to attack.")

      loop do 
        speaking_prompt("Do you aim for the legs, head, arms, or chest with your sword, or trample the enemy with your horse?")
        speaking_prompt("type 'legs', 'head', 'arms', 'chest' or 'trample'")
        speaking_prompt("TYPE THE FULL WORD OR THE GAME BREAKS")
        aim = gets.chomp
        case aim 
        when "legs"
          hit_box("legs")
        when "head"
          hit_box("head")
        when "arms"
          hit_box("arms")
        when "chest"
          hit_box("chest")
        when "trample"
          hit_box("trample")
        else
          speaking_prompt("Please select the full word of the body part you're aiming for.")
        end
      

        if hit_box(aim)
          system("clear")
          
          if aim == "trample"
            action_prompt("You ride directly at an enemy soldier.")
            damage = (0..player_damgage).to_a.sample
            action_prompt("You deal #{damage} damage.")
            enemy_health = enemy_health - damage
            speaking_prompt("The enemy is at #{enemy_health} HP.")
            gets()
          else
            action_prompt("You strike for the #{aim}.")
            damage = (0..player_damgage).to_a.sample
            action_prompt("You deal #{damage} damage.")
            enemy_health = enemy_health - damage
            speaking_prompt("The enemy is at #{enemy_health} HP.")
            gets()
          end

          break
        else
          action_prompt("You missed.")
          break
        end
      end


    else
      aim = %w(arms legs chest head).sample
      speaking_prompt("The enemy attacks, and aims for your #{aim}.")
      
      if hit_box(aim)
        system("clear")
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
  speaking_prompt("In order to return to Rome with all the rights of a true Roman citizen, you must sucessfully
  fight in five battles against Rome's enemy, the Gauls")
  gets
  system("clear")
  loop do 
    gets()
    loop do 
      system("clear")
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
        gets
        system("clear")
      when "v" || "V"
        speaking_prompt("The sky is dotted by arrows, enemy legions fill the horizon, black and buzzing with the sounds of war.")
        gets
        system("clear")
      when "i" || "I"
        speaking_prompt("In your possession, you have #{supplies}")
      when "n" || "N"
        break
      else
        speaking_prompt("Would you like to speak to your fellow soldiers (S), view your surroundings (V), or view your inventory (I)?")
      end

    end

    loop do
      system("clear")
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
        system("clear")
        break

      when "n" || "N"
        break
      else
        ("Must select Y or N")
      end
    end

    if health > 0
      health = roman_battle_1(name, supplies, health)
    else
      speaking_prompt("You have honorably died defending your empire.")
    end

    if health > 0
      health = roman_nervii_ambush(name, supplies, health)
    else
      speaking_prompt("You have honorably died defending your empire.")
    end  
    
    break if gets.chomp() == "N" || "n"
  end

end



########## introduction ##########
credits()
intro()
gametips()
puts("")
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
gets()

supplies = inventory(supplies, "iron sword")
gets
system("clear")

########## game start ##########

if allegiance == "Rome"
  roman_game(name, supplies, health)
else
  speaking_prompt("This feature (choosing the side of the Gauls) will be available in a future release of Bellum Romanum")
  gets()
  speaking_prompt("Your allegiance has been changed to Rome")
  gets()
  roman_game(name, supplies, health)
end

########## end ##########

speaking_prompt("The War Is Over")
