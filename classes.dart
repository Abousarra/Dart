class Student {
  var name; // public
  var _age; // private _ pose avant variable instence or method
  //constractor
  Student(this.name, this._age);

  // Getter and Setter
  set set_age(var age) {
    this._age = age;
  }

  get get_age => _age;

  //Method
  myPrint() {
    print('Name = $name, Age = $_age');
  }
}

class ConstFinal {
  final int x;
  static const int y = 0;

  const ConstFinal(this.x);
}
