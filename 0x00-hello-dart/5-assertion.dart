void main(List<String> args) {
  assert(args.isNotEmpty, 'Usage: dart 5-assertion.dart <score>');
  int score = int.parse(args[0]);
  assert(score >= 80, 'The score must be bigger or equal to 80');
  print('You Passed\n');
}
