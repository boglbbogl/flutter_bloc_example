import 'dart:async';

class CountBloc2{
  int _count2 = 0;
  final StreamController<int> _countSubject2 = StreamController<int>();
  Stream<int> get count => _countSubject2.stream;

  add() {
    _count2++;
    _countSubject2.sink.add(_count2);
  }

  subtract() {
    _count2--;
    _countSubject2.sink.add(_count2);
  }

  dispose() {
    _countSubject2.close();
  }
}

class CountBloc {
  CountEventBloc countEventBloc = CountEventBloc();
  int _count = 0;
  final StreamController<int> _countSubject = StreamController<int>.broadcast();
  Stream<int> get count => _countSubject.stream;

  CountBloc() {
    countEventBloc._countEventSubject.stream.listen(_countEventListen);
  }

  _countEventListen(CountEvent event){
    switch (event){
      case CountEvent.ADD_EVENT:
        _count++;
        break;
      case CountEvent.SUBTRACT_EVENT:
        _count--;
        break;
    }
    _countSubject.sink.add(_count);
  }
  dispose(){
    _countSubject.close();
    countEventBloc.dispose();
  }
}

class CountEventBloc{
  final StreamController<CountEvent> _countEventSubject = StreamController<CountEvent>();

  Sink<CountEvent> get countEventSink => _countEventSubject.sink;

  dispose(){
    _countEventSubject.close();
  }
}

enum CountEvent {ADD_EVENT, SUBTRACT_EVENT}