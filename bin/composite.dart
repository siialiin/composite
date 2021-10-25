abstract class Thing {
  String name;
  void doSomething();
}

class CompositeThing implements Thing {
  String name;
  Set<Thing> _childThings = Set();

  CompositeThing(this.name);

  void addChild(Thing child) {
    _childThings.add(child);
  }

  void doSomething() {
    print("\r\n** $name is doing something! ** \r\n");
    _childThings.forEach((thing) => thing.doSomething());
    print("\r\n** $name is all done. ** \r\n");
  }
}

class LeafThing implements Thing {
  String name;

  LeafThing(this.name);

  void doSomething() {
    print("*  $name!");
  }
}
