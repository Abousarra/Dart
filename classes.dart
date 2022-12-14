import 'dart:math';

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

//inheritence
class Shape {
  // instence variable // inherite
  String color;
  double radiaus;
  int shadow = 89;
  // static instence variable
  static bool border = true;
  //Controller default
  Shape(this.color, this.radiaus) {
    print('Controller default');
  }
  //Controller named
  Shape.color(this.color, this.radiaus) {
    print('Controller named');
  }
  // instence method // inherite
  printColor() {
    print("Color is $color");
  }

  printRadiaus() {
    print("Radiaus Shape");
  }

  // instence static method
  static printBorder() {
    print('Border is $border');
  }
}

//inherite by extends(Shape is class) //// pas besoin de implimente instence methodes ou instence variables
//****** class extends only one class */
class Circle extends Shape {
  String color;
  double radiaus;
  Circle(this.color, this.radiaus) : super(color, radiaus);

  @override
  printColor() {
    print('override');
    return super.printColor();
  }

  myCircle() {}
}

//inherite by implements (Shape is interface) //// obligatoire de implimente
//tous instence methodes et instence variables (@override)
//****** class imlements more class */
class Triangle implements Shape, Persons {
  @override
  String color;

  @override
  double radiaus;

  @override
  int shadow;

  @override
  double adress = 0;

  Triangle(this.color, this.radiaus, this.shadow) {
    print('Constructor');
  }

  @override
  printColor() {}

  @override
  printRadiaus() {
    print('Radius tri');
  }

  myTriangle() {
    print("myTriangle");
  }

  @override
  printAdress() {}

  @override
  printName() {}
}

//Abstruct classes //// start
abstract class Persons {
  late double adress;
  Persons(this.adress) {
    print('Persons constructor');
  }
  printName();
  printAdress();
}

//Abstruct //// ovrride all methode
class professeurs extends Persons {
  professeurs(double adress) : super(adress) {
    print('professeurs constructor');
  }

  @override
  printAdress() {
    print('Adress is $adress');
  }

  @override
  printName() {}
}

//Abstruct //// ovrride same methode so you must make 'abstruct class'
abstract class etudiants extends Persons {
  etudiants(super.adress);

  @override
  printName() {
    print("object");
  }
}

//Abstruct classes //// end

// 94.94. Dart Polymorphism

abstract class MyShape {
  double get area;
}

class MyCircle implements MyShape {
  double radius;
  MyCircle({this.radius = 0});
  @override
  double get area => pi * radius * radius;
}

class MyTriangle implements MyShape {
  double width;
  double hight;
  MyTriangle({this.width = 0, this.hight = 0});
  @override
  double get area => width * hight;
}
// End Dart Polymorphism

//96.96. Dart Mixins  (Arabic)

mixin MyMixin {
  myMixin() {
    print('Mixiiiin');
  }
}

class Test with MyMixin {}

// 97.97. Dart Super Keyword (Arabic)

class SuperClass1 {
  int number1 = 100;
}

class SuperClass2 extends SuperClass1 {
  int number2 = 200;
}

class SuperClass3 extends SuperClass2 {
  int number3 = 300;
  getNumberSuper1() => 'numer super class 1 is ${super.number1}';
  getNumberSuper2() => 'numer super class 2 is ${super.number2}';
  getNumberSuper3() => 'numer this class 3 is ${this.number3}';
}

// end Dart Super Keyword

class MyException implements Exception {}
