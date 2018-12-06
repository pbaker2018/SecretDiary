# Make a set of tests that dsign 'locked' and 'unlocked?' functionality for a padlock
require 'padlock'

RSpec.describe Padlock do

  let (:padlock) { described_class.new }

  it "is locked" do
    expect(padlock.locked?).to eq true
  end

  it "is unlockable" do
    padlock.unlock
    expect(padlock.locked?).to eq false
  end

  it 'is lockable' do
    padlock.unlock
    padlock.lock
    expect(padlock.locked?).to eq true
  end


end
