void main() {
  // 1
  print(funcOne(a: 5));
  // 2
  print(funcTwo(a: 5, b: 45));
  //3
  print(funcThree(a: 50, b: 25, c: 5));
  //4
  print(funcFour(min: 10));
  //5
  List array = [1, 3, 4, 5, 6];
  print(funcFive(array: array));
  //6
  var a = true;
  print(funcSix(a: a));
  //7
  var b = 3;
  print(funcSeven(a: b));
  //8
  List list = [1, 2, 2, 3, 4];
  funcEight(list: list);
}

//1
int funcOne({required int a}) {
  return a * a;
}

//2
int funcTwo({required int a, required int b}) {
  return a + b;
}

//3
double funcThree({required int a, required int b, required int c}) {
  return (a - b) / c;
}

//4
String funcFour({required int min}) => '$min minutes = ${min * 60} seconds';
//5
String funcFive({required List array}) => array[0].toString();
//6
String funcSix({required dynamic a}) {
  if (a is bool) {
    if (a) {
      return 'Переменная имеет значение true';
    } else {
      return 'Переменная имеет значение false';
    }
  } else {
    return 'Error';
  }
}

//7
bool funcSeven({required int a}) {
  if (a <= 0) {
    return true;
  } else {
    return false;
  }
}

//8
void funcEight({required List list}) {
  int? someVariable;
  bool a = false;
  list.forEach((e) {
    if (e == someVariable) {
      a = true;
    }
    someVariable = e;
  });
  if (a == true) {
    print('Да');
  } else {
    print('Нет');
  }
}
