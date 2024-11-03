import 'dart:async';

void main() {
  final controller = StreamController();
  final stream_test = controller.stream.asBroadcastStream();

  final streamListener1 = stream_test.listen((val){
    print('Listener 1 : $val');
  });

  final streamListener2 = stream_test.listen((val){
    print('Listener 2 : $val');
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
}