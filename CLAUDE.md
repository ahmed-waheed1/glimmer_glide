# Glimmer Glide

A tap-to-fly mobile game built with Flutter (3.47+, Dart 3.13+) and Flame 1.38.
The player is Glimmer, an original paper-lantern spirit gliding through a night
forest between pairs of stone pillars. All characters and art are original;
never imitate the characters, art, or names of existing games.

## Commands

- Run: `flutter run`
- Analyze (must be clean before finishing any task): `flutter analyze`
- Format: `dart format lib test`
- Test: `flutter test`

## Architecture

lib/
main.dart Entry point only: device setup, then runApp(GameWidget).
config/ Constants and tuning values. Imports nothing from lib/.
game/ GlimmerGame (FlameGame subclass) and game state.
components/ Flame components (player, pillars, ground, HUD text).
overlays/ Flutter widgets shown over the game (menus).
services/ Non-visual code: persistence, audio. Abstract interface
plus one implementation per service.

Dependency rules (one direction only):

- components/ may import config/ and game/; never overlays/ or a concrete service.
- overlays/ talk to the game only through public GlimmerGame methods.
- services/ never import Flame or Flutter widgets.
- GlimmerGame receives services through its constructor (dependency
  injection), typed as the abstract interface, so they can be faked in tests.

## Code rules

- One public class per file; file names in snake_case matching the class.
- No magic numbers: tuning values go in config/constants.dart.
- All movement uses `dt` (units per second × dt), never per-frame amounts.
- update() changes state; render() only draws. Never mix them.
- Create Paint and other reusable objects once, never inside render().
- Doc comments (///) on every public class and non-obvious method; comments
  explain _why_, not _what_.
- Prefer small methods with descriptive names over long ones with comments.
- Use `final` and `const` wherever possible.

## Workflow

- This project is built in numbered steps. Implement only the current step;
  don't add features from later steps.
- Don't add dependencies to pubspec.yaml unless the step calls for them.
- After changes: run `dart format`, then `flutter analyze` and fix every issue.
- End each task with a short summary of files changed and how to test them.
