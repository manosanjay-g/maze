import 'package:chat/src/models/user.dart';

abstract class AUserService {
  Future<User> connect(User user);
  Future<List<User>> usersOnline();
  Future<void> disconnect(User user);
}
