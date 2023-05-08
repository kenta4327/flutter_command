import 'package:flutter_command/receivers/receiver.dart';

class FileWriteReceiver implements Receiver {
  @override
  void action(counter) {
    // とりあえずログ記載のみ行う
    print('$counter をファイルに書き込み');
  }
}