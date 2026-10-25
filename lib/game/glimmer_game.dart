import 'package:flame/camera.dart';
import 'package:flame/game.dart';
import 'package:flutter/painting.dart';

import '../config/constants.dart';

/// The root of Glimmer Glide: owns the world, the camera, and game state.
///
/// The camera uses a fixed resolution so gameplay is tuned in world units
/// rather than screen pixels; screens with a different aspect ratio get
/// letterboxed instead of showing more or less of the forest.
class GlimmerGame extends FlameGame {
  /// Creates the game with a fixed-resolution camera over the world.
  GlimmerGame()
    : super(
        camera: CameraComponent.withFixedResolution(
          width: worldWidth,
          height: worldHeight,
        ),
      );

  @override
  Color backgroundColor() => nightSkyColor;
}
