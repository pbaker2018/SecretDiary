require 'secretdiary'
require 'padlock'

RSpec.describe SecretDiary do

  let(:diary) {described_class.new(Padlock.new)}

it 'is locked' do
  expect(diary.padlock.locked?).to eq true
end

it 'will not allow you to add entries when locked' do
  expect{ diary.add_entry("foo") }.to raise_error "Diary is locked"
end

it 'will not allow you to get entries when locked' do
  expect{ diary.get_entries }.to raise_error "Diary is locked"
end

it 'it allows you to add entries when unlocked' do
  diary.padlock.unlock
  diary.add_entry("foo")
  expect(diary.get_entries).to eq ["foo"]
end

end
