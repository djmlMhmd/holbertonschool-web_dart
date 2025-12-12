import '0-util.dart';

Future<void> usersCount() async {
  final int count = await fetchUsersCount();
  print(count);
}
