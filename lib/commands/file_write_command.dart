import 'package:flutter_command/commands/command.dart';
import 'package:flutter_command/receivers/file_write_receiver.dart';

class FileWriteCommand implements Command {
  final _fileWriteReceiver = FileWriteReceiver();

  @override
  void execute(counter) {
    _fileWriteReceiver.action(counter);
  }
}