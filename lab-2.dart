void main() {
  // Scaling grades
  List<double> grades = [90, 80, 70, 60, 85];
  List<double> scaledGrades = grades.map((grade) => (grade / 100) * 30 + 2).toList();
  print(scaledGrades);

  // Generating students
  List<int> numbers = [1, 2, 3, 4, 5];
  List<Student> students = numbers.map((n) {
    String name = 'Student #$n';
    String sid = (100000000 + n).toString();
    return Student(sid: sid, name: name);
  }).toList();

  // Printing students
  students.forEach((grade)=>print('$grade'));

  // Instantiate player and enemy
  Player player = Player(name: "John", hp: 100, magicDamage: 30, mana: 50, defense: 5);
  Enemy enemy = Enemy(name: "Goblin", hp: 80, attackPower: 25, stamina: 40, defense: 10);

  // Enemy attacks player
  int enemyAttackDamage = enemy.attack(player);
  print("Enemy attacks player for $enemyAttackDamage damage!");
  print("Player's HP: ${player.hp}");

  // Player casts spell on enemy
  int playerMagicDamage = player.castSpell(enemy);
  print("Player casts spell on enemy for $playerMagicDamage damage!");
  print("Enemy's HP: ${enemy.hp}");
}

class Student {
  String sid;
  String name;

  Student({required this.sid, required this.name});

  @override
  String toString() {
    return 'Student sid: $sid, Name: $name';
  }
}

class Character {
  String name;
  int hp;
  int defense;
  
  Character({required this.name, required this.hp, required this.defense});
}


class Player extends Character with Magic {
  int magicDamage;
  int mana;
  Player({required String name, required int hp, required this.magicDamage, required this.mana, required int defense}) 
    : super(name: name, hp: hp, defense: defense);
}

class Enemy extends Character with Melee {
  int attackPower;
  int stamina;

  Enemy({required String name, required int hp, required this.attackPower, required this.stamina, required int defense}) 
    : super(name: name, hp: hp, defense: defense);
}

mixin Magic on Character {
  int magicDamage = 0;
  int mana = 0;
  
  int castSpell(Character target) {
    if (mana < 10) {
      throw Exception("Not enough mana");
    }
    mana -= 10;

    int damage = magicDamage - target.defense;
    if (damage > 0) {
      target.hp -= damage;
      return damage;
    } else {
      return 0; // No negative damage
    }
  }
}

mixin Melee on Character {
  int attackPower = 0;
  int stamina = 0;

  int attack(Character target) {
    if (stamina < 10) {
      throw Exception("Not enough stamina");
    }
    stamina -= 10;

    int damage = attackPower - target.defense;
    if (damage > 0) {
      target.hp -= damage;
      return damage;
    } else {
      return 0; // No negative damage
    }
  }
}
