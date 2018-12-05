
class SecretDiary

  attr_reader :entries, :locked, :unlock

  def initialize(locked = true)
    @entries = []
    @locked = locked
  end

  def locked?
    @locked = true
  end

  def unlock
    @locked = false
  end

  def add_entry(entry)
    fail 'Diary is locked' if @locked == true
    @entries << entry
  end

  def get_entries
    fail 'Diary is locked' if @locked == true
    @entries
  end

end
