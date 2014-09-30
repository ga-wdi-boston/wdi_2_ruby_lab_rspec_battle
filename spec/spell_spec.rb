describe Spell do

  it "has a target" do

    target = :target

    spell = Spell.new(target)

    expect(spell.target).to eq :target
  end

  it "has effects" do
    effects = [:damages, :cancels, :freezes]

    spell = Spell.new(effects)

    expect(spell.effects).to include(:freezes)

  end

  context "with a power value" do
    it "has a value" do
      value = 10

      spell = Spell.new(value)

      expect(spell.value).to eq 10
    end
  end

  context "with a combo effect" do
    it "has a combo effect" do

      effects = [:combos]

      expect(spell.effects).to include(:combos)
    end
  end

  context "with a cancel effect" do
    it "has a cancel effect" do
      effects = [:cancels]

      expect(spell.effects).to include(:combos)
    end
  end

  context "with a status effect" do
    it "has a status effect" do
      effects = [:freezes]

      expect(spell.effects).to include(:combo)
    end
  end

end