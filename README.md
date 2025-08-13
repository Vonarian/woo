## Woo

The most beautiful way to greet the world. A tiny Dart package that models a friendly being named Woo — an eternal angel and a good dev — with a simple, fun API.

### Installation

Add the package to your project:

```bash
dart pub add woo
```

Import it where you need it:

```dart
import 'package:woo/woo.dart';
```

### Quick start

```dart
import 'package:woo/woo.dart';

void main() {
  final woo = Woo.birth(name: 'Woo', age: 100);

  // Capabilities
  print(woo.isAngel);   // true
  print(woo.hasWings);  // true
  print(woo.isGoodDev); // true

  // Polite greetings
  woo.sayHello();   // Hello, my name is Woo and I am 100 years old.
  woo.sayGoodbye(); // Goodbye, my name was Woo and I was 100 years old.
}
```

### API overview

- **`Human`**: Base contract with identity and greeting.

  - **`name`**: String
  - **`age`**: int
  - **`sayHello()`**

- **`Angel`**: Capability contract for angelic beings.

  - **`isAngel`**: bool
  - **`hasWings`**: bool

- **`Dev`**: A concrete `Human` with developer traits.

  - Default: `isGoodDev` is `false`, `sayHello()` prints a dev greeting
  - Can be used as an interface for “dev-like” capabilities

- **`Woo`**: A concrete `Human` that implements `Angel` and `Dev`.
  - Constructors: `Woo(...)`, `Woo.birth({required name, required age})`
  - Properties: `isAngel == true`, `hasWings == true`, `isGoodDev == true`
  - Methods: `sayHello()`, `sayGoodbye()`

### Additional examples

Create a regular `Dev`:

```dart
final dev = Dev(name: 'Alex', age: 27);
dev.sayHello();   // Hello, I am a dev!
print(dev.isGoodDev); // false (by default)
```

Use `Woo` directly:

```dart
const woo = Woo(name: 'Woo', age: 100);
woo.sayHello();
```

### Development

- Example entry point: `example/woo_example.dart`
- Run static analysis:

```bash
dart analyze
```

- Run tests:

```bash
dart test
```

### License

MIT. See `LICENSE` if present in the repository, or the repository page at [`https://github.com/Vonarian/woo`](https://github.com/Vonarian/woo).
