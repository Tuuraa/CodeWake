import 'dart:isolate';
import 'dart:io';

void echo(SendPort sendPort) {
  ReceivePort receivePort = ReceivePort();
  sendPort.send(receivePort.sendPort);

  while (true) {
    receivePort.listen((data) {
      print('Received: $data');
    });

    sleep(Duration(seconds: 1));
  }
}

void startAlarm() {
  ReceivePort receivePort = ReceivePort();
  Isolate.spawn(echo, receivePort.sendPort);

  receivePort.listen((data) {
    print('Echo port: $data');
  });
}
