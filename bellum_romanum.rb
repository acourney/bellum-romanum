require 'pry'

VALID_ALLEGIANCES = ["Gaul", "Rome", "gaul", "rome", "Roman",  "roman", "r", "g", "R", "G"]

##############################################################################################################################################################
##################################### ascii art, credits, introduction #######################################################################################
##############################################################################################################################################################

def ascii_ariovistus()
  puts("                                                                                            _,..---''-.,         ")
  puts("                                                                                            ,-`,-.         `,         ")
  puts("                                                                                           /  / _/           \\         ")
  puts("                                                                                          /___//_____,--.     ,         ")
  puts("                                                                                          /     __,..--'||     |         ")
  puts("                                                                                          `T`7 //,-',  //      |         ")
  puts("                                                                                          )/_//  `'  //       |         ")
  puts("                                                                                          |`-`      <<,       /         ")
  puts("                                                                                          \\ _        `,\\     /         ")
  puts("                                                                                           |)`',       \\\\___/         ")
  puts("                                                                                           \\`~~       , `--'         ")
  puts("                                                                                           |     ,.-'     |         ")
  puts("                                                                                             `--,`         \\  _         ")
  puts("                                                                                         ,-'`)T(            >` `--..,         ")
  puts("                                                                                       ,'`   //\\_\\        ,/`         `-,         ")
  puts("                                                                                      (  ___/   /`-....--<               `,         ")
  puts("                                                                                      /`  /\\__/\\__,/     >._              )         ")
  puts("                                                                                     /   |__/\\__/  \\____/\\  `-,-.____,.--'\\         ")
end

def ascii_caesar()
  puts("          ___       ")
  puts("          \\||      ")
  puts("         ,'_,-\\     ")
  puts("         ;'____\\    ")
  puts("         || =\\=|    ")
  puts("         ||  - |    ")                           
  puts("     ,---'._--''-,, ")   
  puts("    / `-._- _--/,,| ")            
  puts("   /-._,  `-.__;,,|'")                           
  puts("  /   ;\\      / , ; ")                           
  puts(" /  ,' | _ - ',/, ;")
  puts("(  (   |     /, ,,;")
  puts(" \\  \\  |     ',,/,;")
  puts("  \\  \\ |    /, / ,;")
  puts(" (| ,^.|   / ,, ,/;")
  puts("  `-'./ `-._,, ,/,;")
  puts("       �-._ `-._,,;")
  puts("       |/,,`-._ `-.")
  puts("       |, ,;, ,`-._\\ ")
end

def navy_battle_ascii()
  puts(" ")
  puts("   __|__ |___| |\                   /|\          ")    
  puts("   |o__| |___| | \                /__| )         ") 
  puts("   |___| |___| |o \              /____| ))       ") 
  puts("  _|___| |___| |__o\            /______| )))     ")
  puts(" /...\_____|___|____\_/        /________|  )))   ")   
  puts(" \   o * o * * o o  /                _|____))    ")
  puts("  \                /          \======| o o /    ")
  puts(" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ")
  puts("    ~~~~~~ ~    ~~~~~~     ~~    ~    ~~~~~   ~~~")
end

def roman_ascii()
  puts("    _.-\"\"}      ")
  puts("    / \"\" ;      ")
  puts("  .-\"` __] ',                         ")
  puts("  I_ \"\"__.`-,;           |   |      ")
  puts("  I_.,-\"ii\"{             !___!      ")
  puts("  | ||  ||  |        ,    | |      ")
  puts("  | ||  ||  |       .;    | |      ")
  puts("  | ||  ||  |       | \    | |      ")
  puts("  | ||  ||  |       |  |  | |      ")
  puts("  | ||  ||  |       |  |  | |   __      ")
  puts("  | ||  ||  |       |  |  | |  |  |      ")
  puts("  | ||  ||  |   ;|  |  |  | |  |  |      ")
  puts("  | ||  ||  |\"\_/ `,_|  |  | |  |  |  ___.--\"\"`\      ")
  puts("  | ||  ||  |       |  | \.| |=,|  |\"\"          `,      ")
  puts("  | ||  ||  |       |  |  | |  |  |____________.-+.__      ")
  puts(" _:_!|_,'!__!       |  |  | |_,!  !         __,I   `\"|      ")
  puts(" :     |      `-\"\"`,.!__!-,!_!_ '--'`,_,--\"\"\"         |      ")
  puts(" |     ;___          `\"-.-'    `,_.-'\"            _..-'           ") 
  puts(" `-._ |   \"\"\"--,,_     |`\"\"-.--'|         __.--\"\"                ")
  puts("    `\"--..__     \"\"--.|    |   |_,_  _.-'                         ")
  puts("            \"\"--.._   `-,__!_.-' _,\"\"                            ")
  puts("                   \"\"--,____.--'\"                                 ")

end

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
  puts("    /\\   / ____|  / ____|                      ")
  puts("   /  \\ | |      | |  __  __ _ _ __ ___   ___  ")
  puts("  / /\\ \\| |      | | |_ |/ _` | '_ ` _ \\ / _ \\ ")
  puts(" / ____ \\ |____  | |__| | (_| | | | | | |  __/ ")
  puts("/_/    \\_\\_____|  \\_____|\\__,_|_| |_| |_|\\___| ")

  puts("           _____ _             _ _       ")
  puts("          / ____| |           | (_)      ")
  puts("         | (___ | |_ _   _  __| |_  ___  ")
  puts("          \___ \\| __ | | | |/ _` | |/ _ \\ ")
  puts("          ____) | |_| |_| | (_| | | (_) |")
  puts("         |_____/ \\__|\\__,_|\\__,_|_|\\___/ ")

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
  puts(" |  _ \\     | | |                ")
  puts(" | |_) | ___| | |_   _ _ __ ___  ")
  puts(" |  _ < / _ \\ | | | | | '_ ` _ \\ ")
  puts(" | |_) |  __/ | | |_| | | | | | |")
  puts(" |____/ \___ |_|_|\\__,_|_| |_| |_|")
  puts("                 _____                                             ")
  puts("                |  __ \\                                            ")
  puts("                | |__) |___  _ __ ___   __ _ _ __  _   _ _ __ ___  ")
  puts("                |  _  // _ \\| '_ ` _ \\ / _` | '_ \\| | | | '_ ` _ \\ ")
  puts("                | | \\ \\ (_) | | | | | | (_| | | | | |_| | | | | | |")
  puts("                |_|  \\_\\___/|_| |_| |_|\\__,_|_| |_|\\__,_|_| |_| |_|")
                                                     
                                                          
  gets
  system("clear")
end

##############################################################################################################################################################
##################################### speaking and action prompts, inventory #################################################################################
##############################################################################################################################################################

def speaking_prompt(message)
  puts("==> #{message}")
end

def action_prompt(message)
  puts("** #{message} **")
end

def inventory(supplies, item)
  supplies << item
end

##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################

##############################################################################################################################################################
##################################### battle methods #########################################################################################################
##############################################################################################################################################################


########## introductory battle ##########

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

########## cavalry battle/ambush battle ##########

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

########## archery battle ##########

def roman_archery_battle(name, supplies, health)
  speaking_prompt("The ambush by Gallic tribes at the river Sambre brought the Romans a hardwon victory...")
  gets
  system("clear")

  speaking_prompt("Your commander has decided that the best way to defeat the physically imposing Gauls with their longswords is with archers.")
  action_prompt("You have been given a bow and arrow.")
  gets
  system("clear")
  supplies = inventory(supplies, "bow and arrow")
  # binding.pry

  speaking_prompt("Ready your bows. (hit the 'return' key to fire your arrow)")
  gets
  system("clear")

  puts("3")
  sleep(1)
  system 'clear'

  puts("2")
  sleep(1)
  system 'clear'

  puts("1")
  sleep(1)
  system 'clear'

  time1 = Time.now
  puts("fire")
  gets()
  time2 = Time.now
  # binding.pry

  if (time2.sec - time1.sec) <= 1
    # binding.pry
    action_prompt("You aim for enemy soldiers.")
    gets()
    health = archery_fight(health, supplies, 50)
    system("clear")
  else
    action_prompt("You took too long to fire, and missed.")
    gets()
    speaking_prompt("Enemy soldiers are rushing your front line, and you begin to fight in sword combat.")
    gets()
    system("clear")
    health = fight(health, supplies, 50)
  end

  system 'clear'
  health
end

########## ariovistus battle/ strategy battle ##########

def strategy_meeting(name, supplies, health)
  system("clear")
  speaking_prompt("Your legion has been heading to Vesontio, a large Gallic town, with plans to conquer it.")
  gets()
  speaking_prompt("Enroute, Julius Caesar was invited to a meeting with German King, Ariovistus, who also planned to conquer this territory.")
  gets
  speaking_prompt("Your presence has been requested to plan and attend a parley between the two leaders.")
  gets()
  system("clear")


  speaking_prompt("You arrive at a small knoll outside of Vesontio to see Ariovistus and his small legion of escorts.")
  gets()

  ####### some visuals, ascii art of peoples faces would be nice here #######
  ascii_ariovistus
  speaking_prompt("Ariovistus: Dear friend and ally, I have come here to conquer this land. As a Gaul it is my right to conquer any Gallic lands.")
  gets()
  system("clear")
  ascii_caesar
  speaking_prompt("Caesar: We all live by the same rules. Shall I let you decide whether it is my right to conquer any Gaullic land?")
  gets()
  system("clear")
  ascii_ariovistus
  speaking_prompt("Ariovistus: So... was this meeting just a pretense for you coming here to crush me?")
  gets()
  system("clear")
  ascii_ariovistus
  speaking_prompt("Ariovistus: You can take your armies out of this country right now. I will be happy to rule this land in your name...")
  gets()
  system("clear")
  ascii_ariovistus
  speaking_prompt("Ariovistus: Anytime you need a favor you won't even have to lift a finger. But, I will conquer this land.")
  gets()
  system("clear")
  
  loop do 
    speaking_prompt("Caesar turns to you and asks whether he should accept this proposal. (y/n)")
    decicion =  gets.chomp()

    case decicion
    when "y" || "Y"
      puts()
      speaking_prompt("Ariovistus's proposal to establish dominion in the name of Caesar has been accepted.")
      gets()
      action_prompt("You've been given a peace treaty with Ariovistus")
      gets()
      supplies = inventory(supplies, "treaty with Ariovistus")
      speaking_prompt("Julius Caesar instead turns his attention to the sea, in the Gulf of Morbihan.")
      gets()
      break
    when "n" || "N"
      puts()
      speaking_prompt("You've advised Julius Caesar that accepting this proposal would make him appear weak to Gauls, 
      and to his political rivals in Rome.")
      gets()
    else
      speaking_prompt("You must make a decision.")
    end

  end
  health
end

########## naval battle ##########

def gulf_of_morbihan(name, supplies, health)
  puts("This will be a naval battle")
  health
end

##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################

##############################################################################################################################################################
################################# ending ceremony ############################################################################################################
##############################################################################################################################################################

def ending_ceremonies(name, supplies)
  if supplies.include?("treaty with Ariovistus")
    puts("As you arrive in Rome, you see Pompey and Crassus welcoming Julius Caesar back to Rome.")
    puts("Because you created a treaty with the Gauls rather than conquer more land for Rome, Julius Caesar has lost his power in Rome.")
    puts("For you, and for Julius Caesar, this war has ended.")
    exit
  else
    puts("You return to Rome in a triumph")
    puts("Julius Casear himself places a laurel on your head for your help in the Gallic Wars.")
    action_prompt("insert some ascii art of Rome here.")
    exit
  end
end

##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################

##############################################################################################################################################################
################################# fighting methods ###########################################################################################################
##############################################################################################################################################################


########## hit box ##########

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

########## sword fight ##########

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
          gets()
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

########## cavalry fight ##########

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
          gets()
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

########## bow and arrow fight ##########

def archery_fight(player_health, supplies, enemy_health)
  health
end

##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################



##############################################################################################################################################################
####################################################   M A I N   G A M E   ###################################################################################
##############################################################################################################################################################

def roman_game(name, supplies, health)
  health = 100

#################### the war begins ####################

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

#################### entering the battles ####################

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

    if health > 0
      health = roman_archery_battle(name, supplies, health)
    else
      speaking_prompt("You have honorably died defending your empire.")
    end  

    if health > 0 
      health =  strategy_meeting(name, supplies, health)
    else 
      speaking_prompt("You have honorably died defending your empire.")
    end

    if health > 0 
      health = gulf_of_morbihan(name, supplies, health)
    else
      speaking_prompt("You have honorably died defending your empire.")
    end

    if health > 0 
      health = ending_ceremonies(name, supplies)
    else
      speaking_prompt("You have honorably died defending your empire.")
    end
    
    break if gets.chomp() == "N" || "n"
  end

end

##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################

##############################################################################################################################################################
##################################   C A L L I N G   A L L   M E T H O D S   #################################################################################
##############################################################################################################################################################


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
system("clear")
supplies = inventory(supplies, "iron sword")

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
