class Player
  attr_accessor :name, :life_points

  def initialize(name)
    @name = name
    @life_points = 10
  end

  def show_state
    puts ("#{@name} a #{@life_points} point de vie")
  end

  def gets_damage(damage)
    @life_points -= damage

    if @life_points > 0
      nil
    else
      @life_point = 0
      puts "Le joueur #{@name} a été tué !"
      
    end
  end

  def attacks(player)
    puts "#{@name} attaque #{player.name}"
    attacks = compute_damage
    puts "il lui inflige #{attacks} points de dommages"
    player.gets_damage(attacks)
    
  end

  def compute_damage
    return rand(1..6)
  end
end

class HumanPlayer < Player
  attr_accessor :weapon_level

  def initialize(name)
    @name = name
    @weapon_level = 1
    @life_points = 100
  end

  def show_state
    puts ("#{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}")
  end

  def compute_damage
    rand(1..6) * @weapon_level
  end

  def search_weapon
     new_weapon = rand(1..6)
        if new_weapon > @weapon_level
          @weapon_level = new_weapon
          puts "cool tu as obtenu une arme de niveau #{new_weapon}"
        else 
          puts "tu n'as rien trouvé"
        end
  end

  def search_health_pack
    health_pack = rand(1..6)
    if health_pack = 1 
      puts "tu n'as rien trouvé"
      else 2 < health_pack > 5
       puts "tu as trouvé un pack de 50 pts de vie "
    end

  end



end




