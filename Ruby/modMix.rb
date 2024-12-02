module Fire
  def fireball
    p "FireBall"
  end
end

module Ice
  def iceball
    p "IceBall"
  end
end

module Weapon
  def sword
    p "Sword"
  end
end

class Wizard 
  include Fire
  include Ice
end

class FireKnight
  include Fire
  include Weapon
end

berlin = Wizard.new

arthur = FireKnight.new

berlin.fireball
berlin.iceball
arthur.fireball
arthur.sword
