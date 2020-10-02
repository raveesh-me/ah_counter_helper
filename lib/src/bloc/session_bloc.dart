import 'package:ah_counter_helper/src/models/session.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';

class SessionBlocModel {
  final SessionBloc bloc;
  final List<Session> sessions;

  SessionBlocModel(this.bloc, this.sessions);
}

class SessionBloc {
  List<Session> _cache = [];

  BehaviorSubject<List<Session>> _subject = BehaviorSubject();
  Stream<List<Session>> get stream => _subject.stream;

  commit() {
    _subject.add(_cache);
  }

  /// To add a session
  void addNewSession() {
    _cache.add(Session(Uuid().v4()));
    commit();
  }

  /// To report ah
  void reportAh(String sessionId) {
    final Session sessionInConsideration =
        _cache.firstWhere((element) => element.id == sessionId)..ah+=1;
    _cache.re
  }

  /// to close the subject
  close() {
    _subject.close();
  }
}
