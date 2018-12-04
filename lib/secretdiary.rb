
class SecretDiary

  attr_accessor :entries

  def initialize
    @entries = []
  end

  def locked?
    true
  end

  def unlocked?
  end

  def add_entry(string)
    fail 'Diary is locked' if locked?
    @entries << string
  end

  def get_entries
    fail 'Diary is locked' if locked?
    @entries
  end

end
