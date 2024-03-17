class Counter {
  int _count = 0;

  void increment() => _count++;
  int get count => _count;

  void decrement() => _count--;

  void resetCounter() => _count = 0;
}
