class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def isalive
    if (@lives > 0)
      true
    end
  end

  def isdead
    if (@lives < 0)
      false
    end
  end

end
