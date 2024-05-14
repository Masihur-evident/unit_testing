import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/counter.dart';
void main(){
  late Counter counter;
  setUp(() {
    counter  = Counter();
  });

  group("counter class functionality" , () {
    test("Test initialized counter from zero", () {
    final value = counter.count;
    expect(value, 0);
  });

  test("Test Incrementing value", () {
    counter.incrementCounter();
    final value = counter.count;
    expect(value, 1);
  });
    test("Test Decrement value", () {
      counter.decrementCounter();
      final value = counter.count;
      expect(value, -1);
    });
    test("Test Reset value", () {
      counter.resetCounter();

      expect(counter.count, 0);
    });


  });






}
