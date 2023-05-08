import 'package:flutter_command/receivers/receiver.dart';

class DbWriteReceiver implements Receiver {
  @override
  void action(counter) {
    // とりあえずログ記載のみ行う
    print('$counter をDBに書き込み');
  }
}