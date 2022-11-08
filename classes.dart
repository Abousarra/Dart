class Student {
  var name; // public
  var _age; // private _ pose avant variable instence or method
  //constractor
  Student(this.name, this._age);

  // Getter and Setter
  // Setter
  set set_age(var age) {
    this._age = age;
  }

  // Getter
  get get_age => _age;

  //Method
  myPrint() {
    print('Name = $name, Age = $_age');
  }
}

// Const and final
class ConstFinal {
  final int x;
  static const int y = 0;

  const ConstFinal(this.x);
}

//46.46. Dart Named Constructor and Initializer List
class Colors {
  final int red;
  final int green;
  final int blue;
  var w1 = Coloreurs._(233, 211, 111);

  Colors(this.red, this.green, this.blue) {
    print('constr normal');
  }

  // Named Constructor
  Colors.black()
      : red = 0,
        green = 0,
        blue = 0 {
    print('constr named');
  }
}

// 47.47.  Dart Private Constructor

class Coloreurs {
  final int red;
  final int green;
  final int blue;

// Private Constructor pose '._' apres nom constructor
  Coloreurs._(this.red, this.green, this.blue) {
    print('constr private normal');
  }

  Coloreurs.black()
      : red = 0,
        green = 0,
        blue = 0;
}

//48.48. Dart Factory Constructor
class MyColors {
  final int red;
  final int green;
  final int blue;

  //MyColors(this.red, this.green, this.blue);

  // factory constructor
  factory MyColors(String color) {
    if (color == 'black') {
      return MyColors._black();
    } else if (color == 'white') {
      return MyColors._White();
    } else {
      return MyColors._auther();
    }
  }

  MyColors._black()
      : red = 0,
        green = 0,
        blue = 0 {
    print('factory constructor MyColors._black');
  }

  MyColors._White()
      : red = 255,
        green = 255,
        blue = 255;
  MyColors._auther()
      : red = 255,
        green = 255,
        blue = 255 {
    print("factory constructor MyColors._auther");
  }
}

// 50.50. Dart Singleton Pattern Using Static Field, Factory Constructor, Getter
class Singleton {
  //Using Static Field
  static final Singleton inst = Singleton.my();

//Using Factory Constructor
  factory Singleton() {
    return inst;
  }

  //Using Getter
  Singleton get getInistence => inst;

  Singleton.my() {
    print('Singleton');
  }
}
