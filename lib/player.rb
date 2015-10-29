class Player
	attr_reader :name, :hp

  DEFAULT_HP = 100

	def initialize(name)
		@name = name
    @hp = DEFAULT_HP
	end

  def receive_damage(attack_dmg)
    @hp -= attack_dmg
  end

  def lost?
    @hp <= 0
  end
end