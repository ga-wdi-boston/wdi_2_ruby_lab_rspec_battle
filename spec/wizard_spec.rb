require_relative '../lib/wizard'

describe Wizard do

  before(:each) do
    @wizard = Wizard.new
    @initial_health = @wizard.health
  end

  it "has health" do
    expect(@wizard.health).to eq @initial_health
  end

  it "starts with 50 health" do
    expect(@wizard.health).to eq 50
  end

  it "heals" do
    @wizard.take_damage(10)
    damaged_health = @wizard.health
    @wizard.heal(10)

    expect(@wizard.health).to eq damaged_health + 10
  end

  it "has many spells" do
    @wizard.spells = [:blizzard, :rockslide]
    expect(@wizard.spells).to include(:rockslide)
  end

  it "casts spells" do
    @wizard.spells = [:spell]
    @wizard.cast_spell(:spell)
    expect(@wizard).to respond_to(:cast_spell)
  end

  it "takes damage" do
    @wizard.take_damage(10)
    final_health = @wizard.health

    expect(final_health).to be < @initial_health
  end

  it "dies when it runs out of health" do
    @wizard.take_damage(@initial_health)

    expect(@wizard.dead?).to be true
  end

  it "does not die when its health is greater than 0" do
    @wizard.take_damage(@initial_health - 1)

    expect(@wizard.dead?).to be false
  end

  it "has a status" do
    @wizard.status = :frozen
    expect(@wizard.status).to be :frozen
  end

  it "sets status" do
    @wizard.set_status(:frozen)
    expect(@wizard.status).to be :frozen
  end

end