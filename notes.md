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