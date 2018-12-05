# Secret Diary

## What does it do?
A diary that allows a person to add an entry and get entries, but only then the diary is unlocked. If the diary is locked, it will raise an error.


## Motivation
This is a project given in my first week at Makers Academy, to help us understand OOP and TDD.


## Code Example
Below are two methods from my SecretDiary class. There are more methods than this, but below is just a sample from this class:
```
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


end
```
