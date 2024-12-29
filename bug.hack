function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
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