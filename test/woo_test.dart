import 'package:woo/woo.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final woo = Woo.birth(name: 'Woo', age: 100);

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(woo.name, 'Woo');
      expect(woo.age, 100);
      woo.sayHello();
      woo.sayGoodbye();
    });
  });
}
