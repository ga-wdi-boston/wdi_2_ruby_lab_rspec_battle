class Wizard
  def initialize
    @health = 50
    @dead = false
  end
  def health
    @health
  end
  def spells
  end
  def cast_spell
  end
  def take_damage(damage)
    @health -= damage
    if @health <= 0
      @dead = true
    end
  end
  def dead?
    @dead
  end
  def status
  end
end