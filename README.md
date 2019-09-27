# jlox

Java implementation of the lox language from [Crafting Interpreters](https://craftinginterpreters.com/contents.html).

## Overview

Lox is a dynamic language featuring:

- control flow
- lexical scoping
- higher order functions
- closures
- classes
- single inheritence


Here is a little taste of the language and syntax

```
// Calculates the nth fibonacci number
fun fibonacci(n) {
  if (n <= 1) return n;
  return fibonacci(n - 2) + fibonacci(n - 1);
}

for (var i = 0; i < 20; i = i + 1) {
  print fibonacci(i);
}
```

```
class A {
  method() {
    print "A method";
  }
}

class B < A {
  method() {
    print "B method";
  }

  test() {
    super.method();
  }
}

class C < B {}

C().test();  // prints "A method"
```

## Building

`make build`

## Running

`make lox` to start the REPL or `make lox SCRIPT=PATH_TO_LOX_FILE` to run a script.
