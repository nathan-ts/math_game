class Player
  attr_reader :name, :lives

  def initialize(n)
    @name = "Player #{n}"
    @lives = 3
  end

  def fail()
    @lives -= 1
    if @lives < 0
      @lives = 0
    end
  end

  def alive?()
    if @lives > 0
      return true
    end
    return false
  end

end

# test = Player.new(1)
# puts test.name
# puts test.lives
# test.fail
# puts test.lives
# puts test.alive?
# test.fail
# puts test.lives
# puts test.alive?
# test.fail
# puts test.lives
# puts test.alive?
# test.fail
# puts test.lives
# puts test.alive?