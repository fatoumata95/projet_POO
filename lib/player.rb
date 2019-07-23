
class Player
	attr_accessor :name, :life_points


	def initialize(name)
		@name=name
		@life_points=10
	end 

    def show_state
    	puts "#{@name} a #{@life_points} point de vie"
    	
    end

    def gets_damage(i)
    	@life_points = @life_points - i
    	if @life_points <= 0
    		puts " le joueur #{@name}  a été tué !"	
    end
end
     def attacks(player)
     	puts " le joueur #{@name} attaque le joueur #{player.name}"
     	damage = compute_damage
     	puts "il lui inflige #{damage} points de dommages" 
     	player.gets_damage(damage)
     end 

     def compute_damage
     	return rand(1..6)
     end

end

class HumanPlayer < Player
	attr_accessor :weapon_level

	def initialize(name)
		super(name)
		@life_points=100
		@weapon_level=1
	end

	 def show_state
    	puts "#{@name} a #{@life_points} point de vie a une arme de niveau #{@weapon_level}"	
    end

    def compute_damage
    rand(1..6) * @weapon_level
  end

  def search_weapon
  	arme=rand(1..6)
      puts "tu as trouvé  une arme de niveau #{arme}"
      if  arme > @weapon_level 

      	puts "youhou elle est meilleur que ton arme actuelle : tu la prends"
       @weapon_level = arme
    else 
    	puts " elle n'est pas mieux que ton arme actuelle"
end
    	
    	def search_healdh_pack
    		ansers = rand(1..6)
    		if ansers == 1
    			puts "Tu n'a rien trouvé.."
    		elsif ansers >= 2 && ansers <=5 && @life_points<=50
    			puts "Bravo ,tu as trouver un packde de +50 points"
                    @life_points = @life_points + 50
                elsif ansers == 6 && @life_points<=20
                	puts "Waow, tu as trouvé un pack de +80 "
                	@life_points = @life_points + 80
                	end
                end
            end
        
    end



                    	


