
class SecretDiary

  def initialize(padlock)
    @entries = []
    @padlock = padlock
  end

  def padlock
    @padlock
  end

  def add_entry(entry)
    fail 'Diary is locked' if padlock.locked? == true
    @entries << entry
  end

  def get_entries
    fail 'Diary is locked' if padlock.locked? == true
    @entries
  end
end
