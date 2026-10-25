import 'dart:ui';

/// Width of the game world in world units.
///
/// The camera scales this fixed world to fit any screen, so every tuning
/// value in this file behaves the same on phones of different sizes.
const double worldWidth = 360;

/// Height of the game world in world units (a 9:16 portrait world).
const double worldHeight = 640;

/// Night-sky color drawn behind everything else in the forest.
const Color nightSkyColor = Color(0xFF0E1330);
