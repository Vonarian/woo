import 'dart:developer';

import 'package:woo/src/woo_exception.dart';

/// A base contract representing a human with a [name] and an [age].
abstract interface class Human {
  /// The human's display name.
  final String name;

  /// The human's age in whole years.
  final int age;

  /// [Human] can say hello.
  void sayHello();

  /// Creates a new [Human] with a [name] and [age].
  const Human({required this.name, required this.age});
}

/// A contract that exposes whether an instance is an angel.
abstract interface class Angel {
  /// Whether this being is an angel.
  bool get isAngel;
  bool get hasWings;
}

/// A class representing a dev
class Dev extends Human {
  /// A true/false value. Whether this dev is good or not
  bool get isGoodDev => false;

  @override
  void sayHello() => print('Hello, I am a dev!');

  const Dev({required super.age, required super.name});
}

/// A concrete implementation of [Human] that is always an [Angel].
class Woo extends Human implements Angel, Dev {
  /// Creates a [Woo] with the given [name] and [age].
  const Woo({required super.name, required super.age});

  /// [Woo] is an angel!
  @override
  bool get isAngel => true;

  /// Woo is a good dev!
  @override
  bool get isGoodDev => true;

  /// Woo is an angel with wings!
  @override
  bool get hasWings => true;

  /// Woo is polite, he says hello!
  @override
  void sayHello() {
    print('Hello, my name is $name and I am $age years old.');
  }

  /// Woo is polite, he says goodbye!
  void sayGoodbye() {
    print('Goodbye, my name was $name and I was $age years old.');
  }

  /// Gives birth to a [Woo] from the given [name] and [age]. There are rules!
  factory Woo.birth({required String name, required int age}) {
    try {
      if (name.toLowerCase() != 'woo') {
        throw WooNameException('Woo can\'t be $name!!!!!!!!');
      }

      return Woo(name: name, age: age);
    } on WooNameException catch (e, st) {
      log(e.toString(), stackTrace: st);
      e.wtf();
      rethrow;
    }
  }
}
