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
  puts("   /-._,  `-.__;,,|")                           
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

def ascii_battle_caesar()
  puts("          ___       ")
  puts("          \\||      ")
  puts("         ,'_,-\\     ")
  puts("         ;'____\\    ")
  puts("         || =\\=|    ")
  puts("         ||  - |    ")                           
  puts("     ,---'._--''-,,---------.--.----_,  ")   
  puts("    / `-._- _--/,,|   ___,,--'--'._<  ")            
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
  puts("   __|__ |___| |\\                   /|\          ")    
  puts("   |o__| |___| | \\                /__| )         ") 
  puts("   |___| |___| |o \\              /____| ))       ") 
  puts("  _|___| |___| |__o\\            /______| )))     ")
  puts(" /...\\_____|___|____\\_/        /________|  )))  ")   
  puts(" \\   o * o * * o o  /                _|____))    ")
  puts("  \\                /          \\==o=o==| o o /   ")
  puts(" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~   ")
  puts("    ~~~~~ ~    ~~~~~~ ^    ~~    ~   ^ ~~~~~   ~~ ")
end

def roman_ascii_won()
  puts("                                                                                    _.-\"\"}                                                 ")
  puts("          ~                                                                         / \"\" ;                                                 ")
  puts("                                                          @@                      .-\"` __] ',                                               ")
  puts("                          ~                                       @               I_ \"\"__.`-,;             |   |                           ")
  puts("                                           ~                *                     I_.,-\"ii\"{               !___!                           ")
  puts("                                                                                  | ||  ||  |         ,     | |                              ")
  puts("                                @                    @               @            | ||  ||  |        .;     | |                              ")
  puts("             @                                                                    | ||  ||  |         | \\   | |                             ")
  puts("                            @                     @         *                     | ||  ||  |         |  |  | |                              ")
  puts("                                         *                        *               | ||  ||  |         |  |  | |    __                        ")
  puts("                     *                                                 ~          | ||  ||  |         |  |  | |   |  |                       ")
  puts("                                   ~         @                   @          @     | ||  ||  |   ;     |  |  | |   |  |  |                    ")
  puts("     ,,                                                 0                         | ||  ||  |\"\_/ `,_  |  |  | |   |  |  ___.--\"\"`\       ")
  puts("   |_C                      ~,~             @           |                         | ||  ||  |         |  | \.| |=  |  |\"\"          `,      ")
  puts("    /\\_                   ~~/(\\                    0      \\ 0     \\0/    0        | ||  ||  |         |  |  | |   |  |____________.-+.     ")
  puts("   (   /|        ~~~_____~~// `             \\o/    |        |\\     |     |    _:_!|_,'!__!         |  |  |  |_!   !         __,    `\"|      ")
  puts("  _/ \\-/ |=========(=)===|(_|_               |    / \\      / \\    / \\       :     |      `-\"\"`,.!__!-,!_!_ '--'`,_,--\"\"\"         |  ")
  puts("   ((+))|         |/\_  _/   \\                ^           *        *           |     ;___          `\"-.-'    `,_.-'\"            _..-'     ") 
  puts("     -           /           -                                             *    |   \"\"\"--,,_     |`\" \"-.--'|         __.--\"\"          ")
  puts("                                                                                    `\"--..__     \"\"--.|    |   |_,_  _.-'                 ")
  puts("                                                                                           \"\"--.._   `-,__!_.-' _,\"\"                     ")
  puts("                                                                                                  \"\"--,____.--'\"                          ")
end

def roman_ascii_lost()
  puts ("                                                                                  _.-\"\"}                                                  ")
  puts ("                                                                                  / \"\" ;                                                  ")
  puts ("                                                                                .-\"` __] ',                                                ")
  puts ("                                                                                I_ \"\"__.`-,;             |   |                            ")
  puts ("                                                                                I_.,-\"ii\"{               !___!                            ")
  puts ("                                                                                | ||  ||  |         ,     | |                               ")
  puts ("                                                                                | ||  ||  |        .;     | |                               ")
  puts ("                                                                                | ||  ||  |         | \    | |                              ")
  puts ("                                                                                | ||  ||  |         |  |  | |                               ")
  puts ("                                                                                | ||  ||  |         |  |  | |    __                         ")
  puts ("                                                                                | ||  ||  |         |  |  | |   |  |                        ")
  puts ("                                                                                | ||  ||  |   ;     |  |  | |   |  |  |                     ")
  puts ("     ,,                                                                         | ||  ||  |\"_/ `,_  |  |  | |   |  |  ___.--\"\"`          ")
  puts ("   |_C                      ~,~                 ,,     ,,                       | ||  ||  |         |  | .| |=  |  |\"\"          `,        ")   
  puts ("    /\\_                   ~~/(\\                D      D                         | ||  ||  |         |  |  | |   |  |____________.-+.      ")     
  puts ("   (   /|        ~~~_____~~// `               <|>`   <|>`                     _:_!|_,'!__!       |  |  |  |_!   !         __,    `\"|       ")     
  puts ("  _/ \\-/ |=========(=)===|(_|_                 |  `   |  `                   :     |      `-\"\"`,.!__!-,!_!_ '--'`,_,--\"\"\"         |   ")    
  puts ("   ((+))|         |/_  _/   \\                 / \\    / \\                  |     ;___          `\"-.-'    `,_.-'\"            _..-'       ")        
  puts ("     -           /           -                                                |   \"\"\"--,,_     |`\" \"-.--'|         __.--\"\"           ")     
  puts ("                                                                                  `\"--..__     \"\"--.|    |   |_,_  _.-'                  ")           
  puts ("                                                                                         \"\"--.._   `-,__!_.-' _,\"\"                      ")         
  puts ("                                                                                                \"\"--,____.--'\"                           ")          
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
  type help to view this message.
  To quit the game at any time, press ^z.")
end

def gametips()
  speaking_prompt("Follow the prompts to continue your fight in this war. 
  To quit the game at any time, press ^z.
  To win the game you must win 5 battles in the Gallic war.
  
  IMPORTANT RULES
    1. If the screen goes blank, just press return
    2. Try not to make typos! This has been playtested but only by one person
    3. You cannot save
    4. Your choices do matter, and it's possible to lose. Try to protect your life.")
end

def credits()
  system("clear")
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
  puts("                                                 Ariovistus            ")
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
    when "i" 
      speaking_prompt("In your possession, you have #{supplies}")
    when "I"
      speaking_prompt("In your possession, you have #{supplies}")
    when "h"
      speaking_prompt("You have #{health} HP.")  
    when "H"
      speaking_prompt("You have #{health} HP.")
    when "l"
      speaking_prompt("As you get closer this soldier looms larger and larger.")
      gets()
      health = fight(health, supplies, 50)
      speaking_prompt("You left that battle with #{health} HP.")
      gets()
      break
    when "L"
      speaking_prompt("As you get closer this soldier looms larger and larger.")
      gets()
      health = fight(health, supplies, 50)
      speaking_prompt("You left that battle with #{health} HP.")
      gets()
      break
    when "r"
      speaking_prompt("This soldier is smaller than he seemed from afar.")
      gets()
      health = fight(health, supplies, 30)
      speaking_prompt("You left that battle with #{health} HP.")
      gets()
      break
    when "R"
      speaking_prompt("This soldier is smaller than he seemed from afar.")
      gets()
      health = fight(health, supplies, 30)
      speaking_prompt("You left that battle with #{health} HP.")
      gets()
      break
    when "e"
      speaking_prompt("You take this chance to escape")
      gets()
      action_prompt("This feature will be available in future versions of the game. You have to choose a soldier to fight.... try again later")
      gets()
    when "E"
      speaking_prompt("You take this chance to escape")
      gets()
      action_prompt("This feature will be available in future versions of the game. You have to choose a soldier to fight.... try again later")
      gets()
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
    when "i"
      speaking_prompt("In your possession, you have #{supplies}")
    when "I"
      speaking_prompt("In your possession, you have #{supplies}")
    when "h"
      speaking_prompt("You have #{health} HP.")
    when "H"
      speaking_prompt("You have #{health} HP.")
    when "v"
      speaking_prompt("Your company is setting up camp along the river Sambre")
      gets
      system("clear")
    when "V"
      speaking_prompt("Your company is setting up camp along the river Sambre")
      gets
      system("clear")
    when "t"
      speaking_prompt("The soldier next to you says, 'We've detected a small band of Gauls ahead, we're sending in a light cavalry.'")
      gets
      system("clear")
    when "T"
      speaking_prompt("The soldier next to you says, 'We've detected a small band of Gauls ahead, we're sending in a light cavalry.'")
      gets
      system("clear")
    when "S"
      speaking_prompt("Someone sees you searching for supplies and hands you a small kit.")
      action_prompt("You have been given a first aid kit.")
      health += 20
      action_prompt("Your HP has increased by 20 points (it is now #{health.to_s})")
      gets
      system("clear")
    when "s"
      speaking_prompt("Someone sees you searching for supplies and hands you a small kit.")
      action_prompt("You have been given a first aid kit.")
      health += 20
      action_prompt("Your HP has increased by 20 points (it is now #{health.to_s})")
      gets
      system("clear")
    when "N"
      break
    when "n"
      break
    else
      speaking_prompt("You must take action")
    end
  end

  speaking_prompt("Your commander is asking soldiers to join either a light cavalry or an infantry force to defeat a small band of Gauls.")
  
  loop do 
    speaking_prompt("Which force would you like to join? (cavalry or infantry)")
    
    choice = gets.chomp()
    case choice
    when "cavalry"
      action_prompt("You have joined the cavalry.")
      action_prompt("You are now in possesion of a horse.")
      supplies = inventory(supplies, "horse")
      gets
      system("clear")
    when "c"
      choice = "cavalry"
      action_prompt("You have joined the cavalry.")
      action_prompt("You are now in possesion of a horse.")
      supplies = inventory(supplies, "horse")
      gets
      system("clear")
    when "C"
      choice = "cavalry"
      action_prompt("You have joined the cavalry.")
      action_prompt("You are now in possesion of a horse.")
      supplies = inventory(supplies, "horse")
      gets
      system("clear")
    when "infantry"
      action_prompt("You have joined the infantry.")
      gets
      system("clear")
    when "i"
      choice = "infantry"
      action_prompt("You have joined the infantry.")
      gets
      system("clear")
    when "I"
      choice = "infantry"
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

  loop do 
    speaking_prompt("Would you like to stop by the medic tent? (y/n press h to check your health)")
    choice = gets.chomp()

    case choice
    when "y"
      speaking_prompt("You go into the medic tent, and have your wounds tended.")
      health += 30
      action_prompt("Your health is now #{health} HP") 
      break
    when "Y"
      speaking_prompt("You go into the medic tent, and have your wounds tended.")
      health += 30
      action_prompt("Your health is now #{health} HP") 
      break
    when "n"
      speaking_prompt("You decide to power through the next battle without medical attention.")
      action_prompt("Your health is still #{health} HP") 
      break
    when "N"
      speaking_prompt("You decide to power through the next battle without medical attention.")
      action_prompt("Your health is still #{health} HP") 
      break
    when "H"
      action_prompt("Your health is #{health} HP")
    when "h"
      action_prompt("Your health is #{health} HP")
    else 
      speaking_prompt("You must decide.")
    end
  end

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
    speaking_prompt("You left that battle with #{health} HP.")
    gets()
  else
    action_prompt("You took too long to fire, and missed.")
    gets()
    speaking_prompt("Enemy soldiers are rushing your front line, and you begin to fight in sword combat.")
    gets()
    system("clear")
    health = fight(health, supplies, 50)
    speaking_prompt("You left that battle with #{health} HP.")
    gets()
  end

  system 'clear'
  health
end

########## ariovistus battle/ strategy battle ##########

def strategy_meeting(name, supplies, health)
  system("clear")
  speaking_prompt("Your legion has been heading to Vesontio, a large Gallic town, with plans to conquer it before Ariovistus does.")
  gets()
  speaking_prompt("Enroute, Julius Caesar was invited to a meeting with German King, Ariovistus.")
  gets
  speaking_prompt("Your presence has been requested to plan and attend a parley between the two leaders.")
  gets()
  system("clear")


  speaking_prompt("You arrive at a small knoll outside of Vesontio to see Ariovistus and his small legion of escorts.")
  gets()

  ####### some visuals, ascii art of peoples faces would be nice here #######
  ascii_ariovistus
  speaking_prompt("Ariovistus: Dear friend and ally, I have just come over the Rhine to these lands,")
  puts("who have admitted me within their territories, and whose towns are all in my power.ʺ")
  gets()
  system("clear")
  ascii_caesar
  speaking_prompt("Caesar: King and friend, since, after having been treated with so much kindness by Caesar and the Roman people,") 
  gets()
  puts("I have great hopes that you, reminded both of Caesar's kindness and his power, would put an end to your oppression here.")
  gets()
  puts("Do not any more bring over any body of men across the Rhine into Gaul")
  gets()
  system("clear")
  ascii_ariovistus
  speaking_prompt("Ariovistus: It appears strange to me... What business do either Caesar or the Roman people have in my own Gaul, which I have conquered in war.")
  gets()
  system("clear")
  ascii_ariovistus
  speaking_prompt("Ariovistus: The right of war is, that they who had conquered should govern those whom they had conquered, in what manner they pleased;")
  gets()
  system("clear")
  ascii_ariovistus
  speaking_prompt("Ariovistus: I propose that Caesar might enter an agreement if he chose; for Ariovistus to rule in Gaul in Caesar's name if you hasten away with")
  puts("what forces you have now")
  gets()
  system("clear")
  
  loop do 
    speaking_prompt("Caesar turns to you and asks whether he should accept this proposal. (y/n)")
    decicion =  gets.chomp()

    case decicion
    when "y"
      puts()
      speaking_prompt("Ariovistus's proposal to establish dominion in the name of Caesar has been accepted.")
      gets()
      action_prompt("You've been given a peace treaty with Ariovistus")
      gets()
      supplies = inventory(supplies, "treaty with Ariovistus")
      speaking_prompt("Julius Caesar instead turns his attention back to Rome, happy to return with an agreement with Ariovistus.")
      gets()
      break
    when "Y"
      puts()
      speaking_prompt("Ariovistus's proposal to establish dominion in the name of Caesar has been accepted.")
      gets()
      action_prompt("You've been given a peace treaty with Ariovistus")
      gets()
      supplies = inventory(supplies, "treaty with Ariovistus")
      speaking_prompt("Julius Caesar instead turns his attention back to Rome, happy to return with an agreement with Ariovistus.")
      gets()
      break
    when "N"
      puts()
      speaking_prompt("You've advised Julius Caesar that accepting this proposal would make him appear weak to Gauls, 
      and to his political rivals in Rome.")
      gets()
      health = battle_of_vosges(name, supplies, health)
      break
    when "n"
      puts()
      speaking_prompt("You've advised Julius Caesar that accepting this proposal would make him appear weak to Gauls, 
      and to his political rivals in Rome.")
      gets()
      health = battle_of_vosges(name, supplies, health)
      break
    else
      speaking_prompt("You must make a decision.")
    end

  end
  health
end

########## naval battle ##########

def gulf_of_morbihan(name, supplies, health)
  system("clear")
  navy_battle_ascii()
  speaking_prompt("Julius Caesar has turned his attention to the sea.")
  gets()
  speaking_prompt("However... the Venetic fleet in Brittany is much larger than the Roman fleet, and the ships themselves are very large.")
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
    roman_ascii_lost()
    puts("As you arrive in Rome, you see Pompey and Crassus welcoming Julius Caesar back to Rome.")
    speaking_prompt("Crassus: People of Rome...!")
    gets()
    speaking_prompt("Wherefore rejoice? What conquest brings he home?")
    gets()
    speaking_prompt("He signed a peach treaty with Ariovistus, king in Gaul.")
    gets()
    speaking_prompt("His credit, along with Rome's, now stands on such slippery ground...")
    gets()
    system("clear")
    roman_ascii_lost()
    speaking_prompt("For you, #{name}, the war is over. You have been discharged from duty.")
    gets()
    exit
  elsif supplies.include?("loss at vosges")
    roman_ascii_lost()
    puts("As you arrive in Rome, you see Pompey and Crassus welcoming Julius Caesar back to Rome.")
    speaking_prompt("Crassus: People of Rome...!")
    gets()
    speaking_prompt("Wherefore rejoice? What conquest brings he home?")
    gets()
    speaking_prompt("He lost territory to Ariovistus, king in Gaul.")
    gets()
    speaking_prompt("His credit, along with Rome's, now stands on such slippery ground...")
    gets()
    system("clear")
    roman_ascii_lost()
    speaking_prompt("For you, #{name}, the war is over. You have been discharged from duty.")
    gets()
    exit
  else
    roman_ascii_won()
    puts("======  Julius Caesar has won the war with the barbaric Gauls  ======")
    gets()
    puts("======  Romans' love to #{name} is no less than that to Julius Caesar himself  ======")
    gets()
    puts("======  Bring #{name} with triumph home unto their house  ======")
    gets()
    action_prompt("Julius Casear places a laurel on your head for your help in the Gallic Wars.")
    gets()
    system("clear")
    ascii_caesar()
    speaking_prompt("Caesar: Good friend, #{name}, go in, and taste some wine with me; And we, like friends, will straightway go together.")
    gets()
    speaking_prompt("For you, #{name}, the war is over. You have been discharged from duty, and have a long life of politics ahead.")
    gets()
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
        aim = ""
        loop do 
          speaking_prompt("Do you aim for the 'legs', 'head', 'arms', or 'chest'?")
          
          aim = gets.chomp
          case aim 
          when "legs"
            hit_box("legs")
            break
          when "l"
            aim = "legs"
            hit_box("legs")
            break
          when "L"
            aim = "legs"
            hit_box("legs")
            break
          when "head"
            hit_box("head")
            break
          when "h"
            aim = "head"
            hit_box("head")
            break
          when "H"
            aim = "head"
            hit_box("head")
            break
          when "arms"
            hit_box("arms")
            break
          when "a"
            aim = "arms"
            hit_box("arms")
            break
          when "A"
            aim = "arms"
            hit_box("arms")
            break
          when "chest"
            hit_box("chest")
            break
          when "c"
            aim = "chest"
            hit_box("chest")
            break
          when "C"
            aim = "chest"
            hit_box("chest")
            break
          else
            speaking_prompt("Please select the full word of the body part you're aiming for.")
          end
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
      gets()
      
      if hit_box(aim)
        damage = (0..enemy_damage).to_a.sample
        action_prompt("The enemy dealt #{damage} damage.")
        player_health = player_health - damage
        speaking_prompt("Your health is #{player_health} HP.")
        gets()
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
        aim = "" 
        loop do 
          speaking_prompt("Do you aim for the legs', 'head', 'arms', or 'chest', or do you 'trample' with your horse?")
          
          aim = gets.chomp
          case aim 
          when "legs"
            hit_box("legs")
            break
          when "l"
            aim = "legs"
            hit_box("legs")
            break
          when "L"
            aim = "legs"
            hit_box("legs")
            break
          when "head"
            hit_box("head")
            break
          when "h"
            aim = "head"
            hit_box("head")
            break
          when "H"
            aim = "head"
            hit_box("head")
            break
          when "arms"
            hit_box("arms")
            break
          when "a"
            aim = "arms"
            hit_box("arms")
            break
          when "A"
            aim = "arms"
            hit_box("arms")
            break
          when "chest"
            hit_box("chest")
            break
          when "c"
            aim = "chest"
            hit_box("chest")
            break
          when "C"
            aim = "chest"
            hit_box("chest")
            break
          when "trample"
            hit_box("trample")
            break
          when "t"
            aim = "trample"
            hit_box("trample")
            break
          when "T"
            aim = "trample"
            hit_box("trample")
            break
          else
            speaking_prompt("Please select the full word of the body part you're aiming for.")
          end
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
      gets()
      
      if hit_box(aim)
        system("clear")
        damage = (0..enemy_damage).to_a.sample
        action_prompt("The enemy dealt #{damage} damage.")
        player_health = player_health - damage
        speaking_prompt("Your health is #{player_health} HP.")
        gets()
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
  player_damgage = 15
  enemy_damage = 10
  
  loop do
    first_strike = ["player", "enemy"].sample
    if first_strike == "player"
      system("clear")
      speaking_prompt("You fire another arrow.")

      loop do 
        aim = ""
        loop do 
          speaking_prompt("Do you aim for the 'legs', 'head', 'arms', or 'chest'?")
          
          aim = gets.chomp
          case aim 
          when "legs"
            hit_box("legs")
            break
          when "l"
            aim = "legs"
            hit_box("legs")
            break
          when "L"
            aim = "legs"
            hit_box("legs")
            break
          when "head"
            hit_box("head")
            break
          when "h"
            aim = "head"
            hit_box("head")
            break
          when "H"
            aim = "head"
            hit_box("head")
            break
          when "arms"
            hit_box("arms")
            break
          when "a"
            aim = "arms"
            hit_box("arms")
            break
          when "A"
            aim = "arms"
            hit_box("arms")
            break
          when "chest"
            hit_box("chest")
            break
          when "c"
            aim = "chest"
            hit_box("chest")
            break
          when "C"
            aim = "chest"
            hit_box("chest")
            break
          else
            speaking_prompt("Please select the full word of the body part you're aiming for.")
          end
        end

        if hit_box(aim)
          system("clear")
          action_prompt("You aim for the enemy's #{aim}.")
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
      speaking_prompt("The enemy retailiates, and aims for your #{aim}.")
      gets()
      
      if hit_box(aim)
        damage = (0..enemy_damage).to_a.sample
        action_prompt("The enemy dealt #{damage} damage.")
        player_health = player_health - damage
        speaking_prompt("Your health is #{player_health} HP.")
        gets()
      else
        action_prompt("You lift your shield, and take cover from enemy fire.")
        gets()
      end
      
    end

    break if player_health <= 0 || enemy_health <= 0
    
  end
  player_health
end

########## Ariovistus fight ##########

def battle_of_vosges(name, supplies, health)

  points = 1

  speaking_prompt("Some of Ariovistus's horsemen start to throw rocks at your envoy...")
  gets()
  system("clear")
  ascii_ariovistus
  speaking_prompt("Caesar will feel what the invincible Germans, well‐trained beyond all others to arms, who for fourteen years have not been")
  puts("beneath a roof, could achieve by their valor.")
  gets()
  system("clear")
  # speaking_prompt("he would feel what the invincible Germans, well‐trained beyond all others to arms, who for fourteen years had not been beneath a
  # roof, could achieve by their valor.")
  speaking_prompt("Both sides have left the knoll.")
  gets()
  speaking_prompt("A great a panic suddenly seizes the whole Roman army, who must now fight the imposing German army")
  gets()
  system("clear")
  speaking_prompt("Caesar needs you to form a battle plan, so he can write a speech to boost morale.")

  loop do
    speaking_prompt("Would you like to listen to Caesar's speech?  (y/n)")
    speech = gets.chomp()

    case speech 
    when 'Y'
      system("clear")
      ascii_battle_caesar
      speaking_prompt("If, driven on by rage and madness, Ariovistus should make war upon us")
      gets
      speaking_prompt("what, after all are you afraid of? Why should you despair either of your own valor or of Caesar's zeal?") 
      gets
      speaking_prompt("Of that enemy a defeat had been made within our fathersʹ recollection -- ")
      gets
      speaking_prompt("the defeat of the Cimbri and Teutones by Caius Marius,")
      gets()
      system("clear")

      action_prompt("As Caesar continues to speak, you feel more and more inspired.")
      health += 15
      action_prompt("Your HP has increased by 15 points (it is now #{health.to_s})")
      gets()
      system("clear")
      break
    when'y'
      system("clear")
      ascii_battle_caesar()
      speaking_prompt("If, driven on by rage and madness, Ariovistus should make war upon us")
      gets
      speaking_prompt("what, after all are you afraid of? Why should you despair either of your own valor or of Caesar's zeal?") 
      gets
      speaking_prompt("Of that enemy a defeat had been made within our fathersʹ recollection -- ")
      gets
      speaking_prompt("the defeat of the Cimbri and Teutones by Caius Marius,")
      gets()
      system("clear")
      
      action_prompt("As Caesar continues to speak, you feel more and more inspired.")
      health += 15
      action_prompt("Your HP has increased by 15 points (it is now #{health.to_s})")
      gets()
      system("clear")
      break
    when 'n'
      break
    when "N"
      break
    else
      ("Would  you like to listen to Caesar's speech?")
    end
  end

  speaking_prompt("You tell Caesar that he should request another metting with Ariovistus.")
  gets()

  loop do 
    speaking_prompt("Should Caesar send senior officials (s) or two trusted friends (f) both Caesar and Ariovistus are familiar with?")
    envoy =  gets.chomp()

    case envoy
    when "s"
      speaking_prompt("Caesar has recieved word that both senior officials have been executed by Ariovistus as a show of power.")
      gets()
      system("clear")
      points -= 1
      break
    when "S"
      speaking_prompt("Caesar has recieved word that both senior officials have been executed by Ariovistus as a show of power.")
      gets()
      system("clear")
      points -= 1
      break
    when "f"
      speaking_prompt("Caesar has dispatched Valerius Procillus, his trusted friend, and Caius Mettius, a merchant who had traded successfully with Ariovistus.")
      gets()
      speaking_prompt("Ariovistus is insulted, and takes the messengers as hostages.")
      gets()
      system("clear")
      points += 1
      break
    when "F"
      speaking_prompt("Caesar has dispatched Valerius Procillus, his trusted friend, and Caius Mettius, a merchant who had traded successfully with Ariovistus.")
      gets()
      speaking_prompt("Ariovistus is insulted, and takes the messengers as hostages.")
      gets()
      system("clear")
      points += 1
      break
    else
      speaking_prompt("Should Caesar send senior officials (s) or two trusted friends (f) both Caesar and Ariovistus are familiar with?")
    end
  end

  loop do
    speaking_prompt("Ariovistus has made camp two miles miles behind Caesar, thus cutting off his communication and supply lines with the allied tribes.")
    speaking_prompt("Should you try to entice Ariovistus into battle (b), or erect (e) a second camp built near Ariovistus' position to cut of his supplies?")
    build_camp = gets.chomp()

    case build_camp
    when "b"
      speaking_prompt("Ariovistus knows you will be out of food and supplies soon, he decides to wait you out and cannot be enticed into battle.")
      gets()
      system("clear")
      points -= 1 
      break
    when "B"
      speaking_prompt("Ariovistus knows you will be out of food and supplies soon, he decides to wait you out and cannot be enticed into battle.")
      gets()
      system("clear")
      points -= 1 
      break
    when "e"
      speaking_prompt("You've set up a camp, closer to Ariovistus's camp. This will put you in a better position to launch an attack.")
      gets()
      system("clear")
      points += 1
      break
    when "E"
      speaking_prompt("You've set up a camp, closer to Ariovistus's camp. This will put you in a better position to launch an attack.")
      gets()
      system("clear")
      points += 1
      break
    else
      speaking_prompt("You must make a decision.")
      gets
    end
  end

  loop do 
    speaking_prompt("You must assemble an advance on Ariovistus") 
    speaking_prompt("Should you assemble a triplex acies, with a charge led by Publius Crassus (P), or set up a testudo, led by Juilius Caesar (J)?")
    formation = gets.chomp()

    case formation
    when "p"
      speaking_prompt("You advise Caesar that he should put Publius Crassus in charge of a triplex acies.")
      gets()
      speaking_prompt("Caesar lines up on the right flank, while Crassus leads a charge on Ariovistus")
      gets()
      speaking_prompt("Germanic tribesmen under Ariovistus try to drive back the left flank, 
      but Crassus with his cavalry charge not only restores balance to the battle, but breaks the whole Germanic line which then flees back across the Rhine.")
      gets()
      system("clear")
      points += 1
      break
    when "P"
      speaking_prompt("You advise Caesar that he should put Publius Crassus in charge of a triplex axis.")
      gets()
      speaking_prompt("Caesar lines up on the right flank, while Crassus leads a charge on Ariovistus")
      gets()
      speaking_prompt("Germanic tribesmen under Ariovistus try to drive back the left flank, 
      but Crassus with his cavalry charge not only restores balance to the battle, but breaks the whole Germanic line which then flees back across the Rhine.")
      gets()
      system("clear")
      points += 1
      break
    when "j"
      speaking_prompt("You advise Caesar that he should lead a testudo against Ariovistus's camp.")
      gets()
      speaking_prompt("This formation is usually used in response to distant missile fire, but Caesar follows your advice.") 
      gets()
      speaking_prompt("Unfortunately, this formation moves at a tortoise-like speed, and Ariovistus was able to get the upper hand in this battle")
      gets()
      system("clear")
      points -= 1
      break
    when "J"
      speaking_prompt("You advise Caesar that he should lead a testudo against Ariovistus's camp.")
      gets()
      speaking_prompt("This formation is usually used in response to distant missile fire, but Caesar follows your advice.") 
      gets()
      speaking_prompt("Unfortunately, this formation moves at a tortoise-like speed, and Ariovistus was able to get the upper hand in this battle")
      gets()
      system("clear")
      points -= 1
      break
    else
      ("Do you assemble a triplex acies, or a testudo?")
    end
  end

  if points <= 1
    supplies << "loss at vosges"
    speaking_prompt("This battle did not go well for you and Caesar, we will see how Rome reacts upon your return...")
  end

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
  fight in three battles against Rome's enemy, the Gauls")
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
        gets()
      when "i"
        speaking_prompt("In your possession, you have #{supplies}")
        gets()
      when "I"
        speaking_prompt("In your possession, you have #{supplies}")
        gets()
      when "H"
        speaking_prompt("You have #{health} HP.")
        gets()
      when "h"
        speaking_prompt("You have #{health} HP.")
        gets()
      when "S"
        speaking_prompt("Your fellow soldiers are listening to your commander's speech.")
        gets
        system("clear")
      when "s"
        speaking_prompt("Your fellow soldiers are listening to your commander's speech.")
        gets
        system("clear")
      when "V"
        speaking_prompt("The sky is dotted by arrows, enemy legions fill the horizon, black and buzzing with the sounds of war.")
        gets
        system("clear")
      when "v"
        speaking_prompt("The sky is dotted by arrows, enemy legions fill the horizon, black and buzzing with the sounds of war.")
        gets
        system("clear")
      when "i"
        speaking_prompt("In your possession, you have #{supplies}")
      when "I"
        speaking_prompt("In your possession, you have #{supplies}")
      when "n"
        break
      when "N"
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
      when "i"
        speaking_prompt("In your possession, you have #{supplies}")
      when "I"
        speaking_prompt("In your possession, you have #{supplies}")
      when "h"
        speaking_prompt("You have #{health} HP.")
      when "H"
        speaking_prompt("You have #{health} HP.")

      when "y"
        system("clear")
        speaking_prompt("... countrymen, lend me your ears; ")
        gets
        puts("We've come to bury the Gauls, not to bring many captives home to Rome.")
        gets
        puts("The evil that men do lives after them;")
        gets
        puts("The good is oft interred with their bones;")
        gets
        puts("So let it be with the Gauls")
        gets
        puts()
        action_prompt("This speech inspires you")
        health += 10
        action_prompt("Your HP has increased by 10 points (it is now #{health.to_s})")
        gets()
        system("clear")
        break
      when "Y"
        system("clear")
        speaking_prompt("... countrymen, lend me your ears; ")
        gets
        puts("We've come to bury the Gauls, not to bring many captives home to Rome.")
        gets
        puts("The evil that men do lives after them;")
        gets
        puts("The good is oft interred with their bones;")
        gets
        puts("So let it be with the Gauls")
        gets
        puts()
        action_prompt("This speech inspires you")
        health += 10
        action_prompt("Your HP has increased by 10 points (it is now #{health.to_s})")
        gets()
        system("clear")
        break
      when "N"
        break
      when "n"
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

    speaking_prompt("You've successfully won 3 battles against the Gauls.")
    gets()
    speaking_prompt("However, Julius Caesar has heard word that his former ally, Ariovistus, is heading south of the Rhine, toward Roman territories...")
    gets()

    if health > 0 
      health =  strategy_meeting(name, supplies, health)
    else 
      speaking_prompt("You have honorably died defending your empire.")
    end

    # if health > 0 
    #   health = gulf_of_morbihan(name, supplies, health)
    # else
    #   speaking_prompt("You have honorably died defending your empire.")
    # end

    if health > 0 
      speaking_prompt("You have sucessfully won three battles against the Gauls, and finally can return to Rome.")
      gets()
      system("clear")
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
