import 'package:ah_counter_helper/src/models/session.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test("Session can instantiate", () {
    expect(Session(), isInstanceOf<Session>());
  });
}
