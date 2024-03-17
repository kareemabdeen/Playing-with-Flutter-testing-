import 'package:flutter_test/flutter_test.dart';
import 'package:give_atrial/testing_trial/user_model.dart';
import 'package:give_atrial/testing_trial/user_repostory.dart';

void main() {
  late UserRepository userRepository;
  setUp(() {
    userRepository = UserRepository();
  });

  /// tests should ne depend on external factor like internet connection here
  ///
  group('User Repostory class -', () {
    group('get user function  ', () {
      test(
          'given GetUser function when its called then its returned an user model',
          () {
        userRepository.getUser().then((user) {
          expect(user, isA<User>());
        });
      });

      test(
          'given GetUser function when its status code not 200 then its throw an exception',
          () {
        userRepository.getUser().then((user) {
          expect(user, throwsException);
        });
      });
    });
  });
}
