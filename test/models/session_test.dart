import 'package:ah_counter_helper/src/models/session.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:uuid/uuid.dart';

main() {
  test("Session can instantiate", () {
    expect(Session(Uuid().v4()), isInstanceOf<Session>());
  });
}
