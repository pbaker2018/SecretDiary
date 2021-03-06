# Secret Diary

## What does it do?
This diary starts as 'locked' and will not allow the user to 'add an entry' or 'get entries' until it is 'unlocked.'
If the user tries to do so while the diary is 'locked', it will raise an error.


## Motivation
This is a project was to help me understand OOP and TDD, and to start putting it in to practise.


## Code
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


## Tests
Below are my tests
```
require 'secretdiary'

RSpec.describe SecretDiary do

  let (:diary) { described_class.new}

it 'is locked' do
  expect(diary.locked?).to eq true
end

it 'will not allow you to add entries when locked' do
  expect{ diary.add_entry("foo") }.to raise_error "Diary is locked"
end

it 'will not allow you to get entries when locked' do
  expect{ diary.get_entries }.to raise_error "Diary is locked"
end

it 'it allows you to add entries when unlocked' do
  diary.unlock
  diary.add_entry("foo")
  expect(diary.get_entries).to eq ["foo"]
end

end
```

## Adding Cohesion
I later used 'Cohesion' to create a new class Padlock (see my lib folder), where I put all the lock functionality into there, and passed an instance of Padlock into the initializer for every instance of SecretDiary. I then re-wrote my tests accordingly.
