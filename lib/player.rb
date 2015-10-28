class Player
	attr_reader :name, :hp

  DEFAULT_ATTACK = 10
  DEFAULT_HP = 100

	def initialize(name)
		@name = name
    @hp = DEFAULT_HP
	end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hp -= DEFAULT_ATTACK
  end

end