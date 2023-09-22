# Lab 02
The starter code for lab 02.

## Getting Started
Go to the https://dartpad.dartlang.org/ website, which allows you to run stand-alone Dart programs.  The code for all parts of this lab should go into the same file.

## Instructions
For this lab, you will explore some of the features around functions and classes in the Dart programming language.
 
Solve the following problems using Dart:

- [ ] Given a list of (`double`) grades (between `0` and `100`), use the `map` method with a lambda function to generate a list of grades scaled to within the range of `0`-`30`, followed by an increase of `2` (`grades` will then be between `2` and `32`).
- [ ] Write a class, called `Student`, which contains two (`String`) fields (`sid` and `name`), a constructor that takes these two values as named arguments, and a `toString()` method to allow it to be printed.
- [ ] Given a list of (`int`) numbers, use the map method with an anonymous function to generate a list of `Student` instances containing a generated student's `name` ('Student #' followed by the number) and a generated `sid` (equal to `100000000` + the number, but as a `String`).
- [ ] Write some code to iterate over these students and print them (using any method you prefer)
- [ ] A few Dart classes have been defined, below.  The 2nd and 3rd classes use two mix-ins called `Magic` and `Melee`.  The `Magic` mix-in will define two (`public`, `int`) instance variables (`magicDamage` and `mana`), as well as a function (`castSpell`).  The `castSpell` function will take a second `Character` instance as an argument and will subtract 10 from the character's `mana`, and calculate damage (`magicDamage` - the other character's defense stat), subtracting this damage from their `hp` and returning the damage.  The `Melee` mix-in will be similar.  It will have two (`public`, `int`) instance variables (`attackPower` and `stamina`), and will also define a method (`attack`).  The `attack` method will subtract `10` from the character's `stamina`, and will calculate damage (`attackPower` - the other character's defense stat).  It will subtract this damage from the other character's `hp` and return the damage.  Your job is to create these two mix-ins.

```
class Character {
  String name;
  int hp;
  int defense;
  
  Character({this.name, this.hp, this.defense});
}

class Player extends Character with Magic {
  Player({name, hp, magicDamage, mana, defense}) 
            : super(name: name, hp: hp, defense: defense) {
    this.mana = mana;
    this.magicDamage = magicDamage;
  }
}

class Enemy extends Character with Melee {
  Enemy({name, hp, attackPower, stamina, defense}) 
           : super(name: name, hp: hp, defense: defense) {
    this.stamina = stamina;
    this.attackPower = attackPower;
  }
}
```

6.	Write some basic code to test our mix-ins, by instantiating one `Enemy` (`enemy`) and one `Player` (`player`).  First, the `enemy` will melee attack the `player`, then the `player` will cast a spell against the `enemy`.  The output should look like the following (though, with different stats the numbers may differ):

```
Boss hits Player for 5 points of damage!
Player hits Boss for 10 points of damage!
```

## Getting Help
If you run into difficulty, you may wish to check out some of the following resources:

- https://dart.dev/tutorials - A series of tutorials for the Dart programming language, focusing entirely on the features of Dart.
- http://stackoverflow.com/ - A forum for asking questions about programming.  I bet you know this one already!

Of course, you can always ask the TA for help!  However, learning how to find the answers out for yourself is not only more satisfying, but results in greater learning as well.

## How to Submit
Save your .dart file in this folder, commit, and then push your code to this repository to submit your lab assignment.