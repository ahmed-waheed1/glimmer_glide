import 'package:flame/game.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:glimmer_glide/config/constants.dart';
import 'package:glimmer_glide/game/glimmer_game.dart';

void main() {
  testWidgets('GlimmerGame loads with a fixed-resolution world', (
    tester,
  ) async {
    final game = GlimmerGame();

    await tester.pumpWidget(GameWidget(game: game));
    await tester.pump();

    expect(game.isLoaded, isTrue);
    expect(game.camera.visibleWorldRect.width, closeTo(worldWidth, 0.001));
    expect(game.camera.visibleWorldRect.height, closeTo(worldHeight, 0.001));
  });
}
