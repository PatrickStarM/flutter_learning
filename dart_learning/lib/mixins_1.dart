class A {
  String info = "this is A";

  void printA() {
    print("A");
  }
}

class B {
  void printB() {
    print("B");
  }
}

class C with A, B {}

void main() {
  var c = C();
  c.printA();
  c.printB();
  print(c.info);
}
