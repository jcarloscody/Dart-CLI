import 'dart:async';

import 'package:args/args.dart';
import 'package:args/command_runner.dart';

void main(List<String> arguments) {
  // final argParser = ArgParser();

  // argParser.addFlag('data', abbr: 'd');
  // argParser.addOption('name', abbr: 'n');

  // final argR = argParser.parse(arguments);

  // print(argR['name']);// dart cli.dart -d --name="jouse"

  CommandRunner('nome', 'nome eee')..addCommand(Comandos())..run(arguments);
  //dart cli.dart -h, ou dart cli.dart comando
}

class Comandos extends Command {
  @override
  // TODO: implement description
  String get description => "Ligue para a RM";

  @override
  // TODO: implement name
  String get name => "rm";

  Comandos(){
    argParser.addOption('template', abbr: 't', help: "kmlkmlkad");
  }

  @override
  FutureOr? run() {
    print(argResults?['template']);
    print("Comando do rm");
    return super.run();
  }
  
}
