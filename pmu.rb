race = {}


begin
  puts race ? "Enter horse name or tape enter to finished !" :
  cheval = gets.chomp!

  race[cheval] = rand(1...100) if cheval != ""

end while cheval != ""

horses = race.keys

def proposition_horses(race)
  puts "Sur quel cheval veux-tu parier parmi ceux-là :"
  race.each do |key, value|
    puts"#{key} avec un côte de #{value}"
  end
end

proposition_horses(race)
choix = gets.chomp

puts "Parfait, combien veux-tu miser ?"
montant = gets.chomp.to_f

course = horses.shuffle

puts "Here it goes... From the beginning, horse #{course[0]} is leading the race"
`say Here it goes... From the beginning, horse #{course[0]} is leading the race`


course = course.shuffle
puts "Holly shit !! this time, it is #{course[0]} who is the big boss.. Just after him, we have #{course[1]}, #{course[2]} and finally #{course[3]}"
`say Holly shit !! this time, it is #{course[0]} who is the big boss.. Just after him, we have #{course[1]}, #{course[2]} and finally #{course[3]}`

course = course.shuffle
puts "Oulala, I am loosing my head. #{course[0]} takes the fucking lead"
course = course.shuffle

puts "It is time to conclude, it is finally #{course[0]} who wins the race, congratulations!!! In second position, #{course[1]}, third, #{course[2]} and then #{course[3]}"
`say It is time to conclude, it is finally #{course[0]} who wins the race, congratulations!!! In second position, #{course[1]}, third, #{course[2]} and then #{course[3]}`

winner = course[0]

def calcule_gain(choix, winner, montant, race)
  if choix == winner
    montant = montant*race[winner.to_s]
    "Vous avez multiplié par #{race[winner]} votre montant. Vous avez gagné #{montant} euros. Pas mal !"
  else
    "Bravo. Vous avez tout perdu, c'est-à-dire #{montant} euros! Votre partenaire va vous quitter. "
  end
end

puts calcule_gain(choix, winner, montant, race)
