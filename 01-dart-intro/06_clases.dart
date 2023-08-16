void main() {
  
  final wolverine =  Hero('Logan', 'Regeneracion');
  
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}


class Hero {
  
  String name;
  String power;
  
  Hero(this.name, this.power);
  
  //Hero((String _name, String _power)
    // : name = _name,
    //  power = _power;
    // )
}