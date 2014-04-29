# Ultimate RSpec Fantasy Battle Time!

Using outside-in Behavior-Driven Development, we'll create a set of Ruby classes that will allow us to simulate an epic battle between two fantastical armies.

## Da Rules

1. A battle consists of two armies.
2. An army can contain any number of creatures (see below).
3. To start a battle, one army must be chosen to strike first.
4. Battle occurs in rounds. For each round:
  * In the first-strike army, all creatures with a Delay of 1 select targets in the opposing army and attack them.
  * In the opposing army, all creatures with a Delay of 1 select targets in the first-strike army and attack them.
  * Repeat the above two rules for each additional delay value.
5. Attacking causes the attacker's Strength to be subtracted from the defender's Health. If the defender has 0 or less Health after this, they are dead and cannot attack anymore.
6. Creatures select targets with the following priority: First Ogres, then Wizards, then Knights.
7. Creatures have a Targets value &ndash; this is the number of targets they can attack per round.
8. If all of an army's creatures are dead at the end of a round, the opposing army is victorious!

## Creatures

* **Knight:** 50 Health, 15 Strength, 1 Delay, 1 Target
* **Wizard:** 20 Health, 75 Strength, 2 Delay, 3 Targets
* **Ogre:** 100 Health, 40 Strength, 3 Delay, 10 Targets
