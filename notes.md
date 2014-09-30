# Wizard Specs

* Wizards have health.
* Wizards start with 50 health.
* Wizards have spells.
* Wizards cast spells.
* Wizards take damage.
* Wizards die when they run out of health.
* Wizards do NOT die when their health is > 0.
* Wizards have a status.

* Additional stuff:
* Figure out which of before(:each) or before(:all) is more appropriate.
* Wizards can have statuses "frozen", "soaked", and "on fire".
  * These may change! Come up with something more abstract. I think I might just leave that for later.
  * Set wizard status to soaked. Set wizard status to buried. Where does this list of statuses come from? What decides it? What sets it?
* Think of more tests!

# Spell Specs

* **Blizzard:** Deals 10 damage and freezes the target until the end of the next turn. Cancels Waterfall.
* **Rockslide:** Deals 10 damage, or 20 damage if the target is frozen. Cancels Lightning.
* **Waterfall:** Deals 10 damage and soaks the target until the end of the next turn. Cancels Fireball.
* **Lightning:** Deals 10 damage, or 20 damage if the target is soaked. Cancels Darkness.
* **Fireball:** If target is on fire, deals 20 damage, otherwise deals 10 damage and sets target on fire until the end of the next turn. Cancels Blizzard.
* **Healing:** Heals the caster for 20 health. Cancels any status effects (frozen, soaked, on fire).
* **Darkness:** Deals 10 damage. Cancels Healing.
* **Barrier:** Reflects any damage-dealing spell back to the opponent. Can only be used once per battle.

* Spells have a target (:caster or :enemy).
* Spells have an effect.
* Spells can damage Wizards.
  * Better said: Spells can send the take_damage message to wizards.
* Spells can heal.
  * Better said: Spells can send the heal message to Wizards.
* Spells
* Most spells have power values.
* Some spells have combo effects.
* Some spells cause status effects.

* Blizzard, Rockslide, Waterfall, Lightning, Fireball, Healing, Darkness, Barrier.

