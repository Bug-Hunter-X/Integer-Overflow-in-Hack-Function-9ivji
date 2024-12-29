function foo(x: int): int {
  // Check for potential overflow before addition
  if (x > INT_MAX - 1) {
    throw new Exception("Integer overflow in foo");
  }
  return x + 1;
}

function bar(x: int): int {
  // Check for potential overflow before multiplication
  if (x > INT_MAX / 2) {
    throw new Exception("Integer overflow in bar");
  }
  return foo(x) * 2;
}

function baz(x: int): int {
  // Check for potential overflow before subtraction
  if (foo(x) * 2 < 0) { //Check for negative result implying overflow
     throw new Exception("Integer overflow in baz");
  }
  return bar(x) - 1;
}

<<HHVM_VERSION>>
<<HHVM_OPTIONS>>

function main() {
  var a = 10;
  var b = baz(a);
  echo b;
}
main();