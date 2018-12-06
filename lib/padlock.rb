
class Padlock

  def initialize
    @locked = true
  end

  def locked?
    @locked
  end

  def unlock
    @locked = false
  end

  def lock
    @locked = true
  end

end
