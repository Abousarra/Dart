// Fat Arrow Function // => au lieu {} if single expression
normalFun(x, y) {
  return x + y;
}

// Fat Arrow Function // => au lieu {} if single expression
fatArrowFun(x, y) => x * y;

//Dart Anonymous Function or Lambda  Expression

Function lemdaFun = (x, y) {
  return x - y;
};

//Dart Lexical Closures fun in fun

lexicalFun(int x) {
  var c = 15;
  print(c);
  insideFun() {
    c = c + x;
    print(c);
  }

  return insideFun();
}
