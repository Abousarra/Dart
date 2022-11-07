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

class Colors {
  final int red;
  final int green;
  final int blue;

//46.46. Dart Named Constructor and Initializer List
  Colors(this.red, this.green, this.blue){
    print('constr normal');
  }

  Colors.black()
      : red = 0,
        green = 0,
        blue = 0 {
          print('constr named');
        }
}
