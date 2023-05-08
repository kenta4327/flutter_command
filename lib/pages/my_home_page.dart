import 'package:flutter/material.dart';
import 'package:flutter_command/commands/command.dart';
import 'package:flutter_command/commands/db_write_command.dart';
import 'package:flutter_command/commands/file_write_command.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final List<Command> _commands = [];

  void addCommand(Command command) {
    _commands.add(command);
  }

  void removeCommand(Command command) {
    _commands.remove(command);
  }

  void execute() {
    for (final command in _commands) {
      command.execute(_counter);
    }
  }

  @override
  void initState() {
    addCommand(FileWriteCommand());
    addCommand(DbWriteCommand());

    super.initState();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      execute();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
