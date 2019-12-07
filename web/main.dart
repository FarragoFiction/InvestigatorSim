import 'dart:html';

import 'scripts/Game.dart';

void main() {
  Game game = new Game();
  game.attach(querySelector("#output"));
  game.start();
}
