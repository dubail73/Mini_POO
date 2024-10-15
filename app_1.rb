require 'bundler'
Bundler.require

require_relative 'lib/player'
require_relative 'lib/game'

player1 = Player.new("josé") 
player2 = Player.new("koala")



puts "A ma droite #{player1.name}"
puts "A ma gauche #{player2.name}"
puts "voici l'état de chaque joueur :"
player1.show_state
player2.show_state
puts "Passons à la phase d'attaque :"

while player1.life_points > 0 && player2.life_points > 0
player1.attacks(player2)
player1.show_state
player2.show_state
break if player1.life_points == 0 || player2.life_points == 0
player2.attacks(player1)
end







