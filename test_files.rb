loop do
  speaking_prompt("The first battle begins.")
  gets()
  

  speaking_prompt("Two Gaulic soldiers rush toward you and your company.
  Do you go for the soldier on the left (L) or right (R)?
  Alternatively, do you try to escape the fight? (E)")
  action = gets.chomp()

  case action

  when  "help"
    help_message()
  when "i" || "I"
    speaking_prompt("In your possession, you have #{supplies}")
  when "h" || "H"
    speaking_prompt("Your HP is #{health}.")

  when "l" || "L"
    speaking_prompt("As you get closer this soldier looms larger and larger.")
    fight(health, supplies, 50)
  when "r" || "R"
    speaking_prompt("This soldier is smaller than you thought")
    fight(health, supplies, 30)
  when "e" || "E"
    speaking_prompt("You take this chance to escape")
  end

  break if gets.chomp() == "next"
end


def fight(player_health, supplies, enemy_health)
  player_damgage = 10
  enemy_damage = 10

  weapons = supplies.any? do |item|
    item.split(" ").include? == "sword"
  end

  if weapons == true
    player_damgage = player_damgage * 2
  end

  loop do
    first_strike = ["player", "enemy"].sample
    if first_strike == "player"
      speaking_prompt("You strike.")
      damage = (0..player_damgage).to_a.sample
      speaking_prompt("You deal #{damage} damage.")
      enemy_health = enemy_health - damage
    else
      speaking_prompt("The enemy attacks.")
      damage = (0..enemy_damage).to_a.sample
      speaking_prompt("The enemy dealt #{damage} damage.")
      player_health = player_health - damage

    break if player_health == 0 || enemy_health == 0
  end
end