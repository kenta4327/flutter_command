import 'package:flutter_command/commands/command.dart';
import 'package:flutter_command/receivers/db_write_receiver.dart';

class DbWriteCommand implements Command {
  final _dbWriteReceiver = DbWriteReceiver();

  @override
  void execute(counter) {
    _dbWriteReceiver.action(counter);
  }
}