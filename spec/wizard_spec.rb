require_relative '../lib/wizard'

describe Wizard do

  before(:each) do
    @wizard = Wizard.new
    @initial_health = @wizard.health
  end

  it "has health" do
    expect(@wizard.attributes).to include(:health)
  end

  it "starts with 50 health" do
    expect(@wizard.health).to eq 50
  end

  it "has spells" do
    expect(@wizard.attributes).to include(:spells)
  end

  it "casts spells" do
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

  it "has a status" do
    expect(@wizard.attributes).to include(:status)
  end

end