import 'auther/teatcher.dart';
import 'classes.dart';
import 'functions.dart';

main() {
  //final vs Const
  final int x; // run-time
  const int y = 10; //compile-time : must be initialized.
  //print('x = $x ; y = $y');
  Teacher teacher = Teacher('Abou');
  teacher.myPrint();
  //Functionss
  // print('********************** Functionss ********************');
  // print('normalFun ${normalFun(14, 15)}');
  // print('fatArrowFun ${fatArrowFun(15.5, 50)}');
  // print('lemdaFun ${lemdaFun(15, 5)}');
  // print('lexicalFun ${lexicalFun(15)}');
  // print('recursiveFun ${recursiveFun(5)}');
  // print('paramOptionalFun ${paramOptionalFun(5, 7)}');
  // print('paramOptionalFun ${paramOptionalFun(5, 7, 12)}');
  // print('paramOptionalFun ${paramOptionalFun(5, 7, 12, 24)}');
  // print('paramNamedFun ${paramNamedFun(x: 5)}');
  // print('paramNamedFun ${paramNamedFun(x: 5, y: 45)}');
  // print('towNumAfterVirguel ${towNumAfterVirguel(45.23465856985)}');

  //Classes
  print('********************** Classes ********************');
  Student st1 = Student('El Ghazali', 45);
  st1.name = 'Sami';
  //getter setter
  st1.set_age = 12;
  print('Age = ${st1.get_age}');
  st1.myPrint();
  //37.37.  Dart Anonymous Object
  Student('Ahmed', 85).myPrint();

  var cf1 = const ConstFinal(14);
  var cf2 = const ConstFinal(14);
  print(cf1 == cf2);

  var w = Colors(233, 211, 111);
  var b = Colors.black();

  var b1 = Coloreurs.black();

  var b2 = MyColors('dd');

  //Using Static Field
  var sing2 = Singleton.inst;
  //Using Factory Constructor
  var sing1 = Singleton();
  //Using Getter
  //var sing3 = Singleton.getInistence;
  var a = sing2.getInistence;
  var c = sing1.getInistence;
  print(identical(a, c));
  //Inheritence
  print('********************** Inheritence ********************');
  Circle circle = Circle('green', 34.9);
  circle.printRadiaus();
  print(circle.shadow);

  Triangle tr = Triangle('blue', 23, 55);
  tr.printRadiaus();
  tr.myTriangle();
  print(tr.shadow);

  professeurs person = professeurs(15);
  person.printAdress();

  // 94.94. Dart Polymorphism
  shapeArea(MyShape myShape) {
    print('Area is ${myShape.area} Mµ');
  }

  shapeArea(MyCircle(radius: 10));
  shapeArea(MyTriangle(hight: 140, width: 17));
  shapeArea(MyTriangle());

  //mixin
  Test test = Test();
  test.myMixin();

  // Super Keyword

  SuperClass3 class3 = SuperClass3();
  print(class3.getNumberSuper1());
  print(class3.getNumberSuper2());
  print(class3.getNumberSuper3());

  // Exception

  int x1 = 10;
  int y1 = 0;
  print(x1);
  print(y1);
  try {
    double z1 = x1 / y1;
    print(z1);
  } catch (e) {
    print('errrrrror');
  } finally {
    print('finally');
  }
  print('end');
}
