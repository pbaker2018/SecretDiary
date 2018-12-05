# Secret Diary

## What does it do?
This diary starts as 'locked' and will not allow the user to 'add an entry' or 'get entries' until it is 'unlocked.'
If the user tries to do so while the diary is 'locked', it will raise an error.


## Motivation
This is a project given in my first week at Makers Academy, to help us understand OOP and TDD.


## Code Example
Below is my SecretDiary class:
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

```
