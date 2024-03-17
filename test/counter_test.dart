import 'package:flutter_test/flutter_test.dart';
import 'package:give_atrial/testing_trial/counter.dart';

void main() {
  //pre test
  setUp(() => null);
  setUpAll(() => null);

// setup is called before every test
// setupall is called before alt the tests
// Setup —> test —> setup —> test —> setup —> test
// setupall -> test -> test -> test

  late Counter counter;
  setUp(() {
    counter = Counter();
  });

  group('counter class -', () {
    //each test work independently
    //given when then
    test(
      'given counter class when  intialization the value of count then the value of count should be zero ',
      () {
        //Arrange
        // act
        int val = counter.count;

        expect(val, 0);
      },
    );

    test(
        'given counter class when the increment func called then the count value should be incremented by one ',
        () {
      counter.increment();
      final int val = counter.count;
      expect(val, 1);
    });
    test(
        'given counter class when the Decrement func called then the count value should be Decremented by one ',
        () {
      counter.decrement();
      int val = counter.count;
      expect(val, -1);
    });

    test(
        'given class counter , when calling reset function , then the value should be equals zero',
        () {
      //Arrange
      final Counter counter = Counter();
      counter.increment();
      counter.increment();
      int val = counter.count;

      expect(val, 2);
      counter.resetCounter();
      val = counter.count;
      expect(val, 0);
    });
  });
  // post test
  tearDown(() => null);
  tearDownAll(() => null);
// test —> Teardown —> test -> Teardown —> test —> Teardown
// test —> test —> test —> TeardownAll
}
