describe Spell do
  it "has effects" do
    effects = [:damages, :cancels, :freezes]

    spell = Spell.new(effects)

    expect(spell.effects).to include(:freezes)

  end

  context "with a power value" do
    it "has a value" do
      effects = [:damages]
      value = 10

      spell = Spell.new(effects, value)

      expect(spell.value).to eq 10
    end
  end

  context "with a combo effect" do
    it "has a combo effect" do
      effects = [:damages, :combos]
      value = 10

      spell = Spell.new(effects, value)

      other_spell =

      expect(spell.value)
    end
  end

  context "with a cancel effect" do
    it "has a cancel effect" do

    end
  end

  context "with a status effect" do
    it "has a status effect" do

    end
  end

end