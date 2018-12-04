require 'secretdiary'

RSpec.describe SecretDiary do

  let (:diary) { described_class.new}

it { is_expected.to respond_to :locked? }

it { is_expected.to respond_to :unlocked? }

it { is_expected.to respond_to(:add_entry).with(1).argument }

it { is_expected.to respond_to :get_entries }

it 'is locked' do
  expect(diary.locked?).to eq true
end

it 'will not allow you to add entries when locked' do
  expect(diary.add_entry(String)).to raise_error "Diary is locked"
end

it 'will not allow you to get entries when locked' do
  expect(diary.get_entries).to raise_error "Diary is locked"
end
end
