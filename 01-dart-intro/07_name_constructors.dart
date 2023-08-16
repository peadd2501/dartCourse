void main() {
  
  final Map<String, dynamic> rawJSON = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isALive': true
  };

  final ironMan = Hero.fromJson( rawJSON );
  
  //final ironMan = Hero(isAlive: false, power: 'Money', name: 'Tony Stark');

  print(ironMan.toString());
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? false;
  
  @override
  String toString() {
    return '$name - $power - is Alive: ${isAlive ? 'YES!' : 'NO!'}';
  }
}
