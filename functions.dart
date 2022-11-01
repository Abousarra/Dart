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

//Dart Lexical Closures : fun in fun

lexicalFun(int x) {
  var c = 15;
  print('var lexicalFun $c');
  insideFun() {
    c = c + x;
    print('insideFun lexicalFun $c');
  }

  return insideFun();
}

// Dart Recursive Function

recursiveFun(x) {
  if (x > 0) {
    return x * recursiveFun(x - 1);
  } else {
    return 1;
  }
}

// 28.28.  Dart Optional Positional Parameters

paramOptionalFun(x, y, [z = 0, w = 0]) {
  return x + y + z + w;
}

// 29.29.  Dart Optional Named Parameters

paramNamedFun({x = 0, y = 0}) {
  return x + y;
}

towNumAfterVirguel(double x) {
  return x.toStringAsFixed(2);
}
