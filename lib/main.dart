import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(GameWidget(game: SmokeTestGame()));
}

class SmokeTestGame extends FlameGame {
  @override
  Color backgroundColor() => const Color(0xFF1B1F3B);

  @override
  Future<void> onLoad() async {
    add(
      TextComponent(
        text: 'Flame is running!',
        position: size / 2,
        anchor: Anchor.center,
      ),
    );
  }
}
