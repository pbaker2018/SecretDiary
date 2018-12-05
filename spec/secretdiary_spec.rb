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
