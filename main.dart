import 'functions.dart';

main() {
  print('normalFun ${normalFun(14, 15)}');
  print('fatArrowFun ${fatArrowFun(15.5, 50)}');
  print('lemdaFun ${lemdaFun(15, 5)}');
  print('lexicalFun ${lexicalFun(15)}');
  print('recursiveFun ${recursiveFun(5)}');
  print('paramOptionalFun ${paramOptionalFun(5, 7)}');
  print('paramOptionalFun ${paramOptionalFun(5, 7, 12)}');
  print('paramOptionalFun ${paramOptionalFun(5, 7, 12, 24)}');
  print('paramNamedFun ${paramNamedFun(x: 5)}');
  print('paramNamedFun ${paramNamedFun(x: 5, y: 45)}');
}
