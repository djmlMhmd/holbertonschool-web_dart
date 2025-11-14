void main(List<String> args) {
  /*
  Write Your code below 
   */
  assert(args.length == 2, 'Usage: dart 5-assertion.dart <number>');
  assert(int.parse(args[0]) == int.parse(args[1]), 'Arguments must be equal');
  print('Assertion passed');
}
