import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:mario_game/game/car_race.dart';
import 'package:mario_game/pages/user/reportsharepage.dart';


import '../../pages/doctor.dart';
import 'widgets.dart';

class GameOverOverlay extends StatelessWidget {
  const GameOverOverlay(this.game, {super.key});

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.background,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(48.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Your Report \nis Ready',
                style: Theme.of(context).textTheme.displayMedium!.copyWith(),
              ),
              // const WhiteSpace(height: 50),
              // GameScoreDisplay(
              //   game: game,
              //   isLight: true,
              // ),
              const WhiteSpace(
                50,
              ),
              ElevatedButton(
                onPressed: () {
                  (game as CarRace).resetGame();
                },
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    const Size(200, 75),
                  ),
                  textStyle: MaterialStateProperty.all(
                      Theme.of(context).textTheme.titleLarge),
                ),
                child: const Text('Play again'),
              ),

              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  // (game as CarRace).resetGame();

                  // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>reportpage()));

                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>reportsharingpage()));
                },
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    const Size(200, 75),
                  ),
                  textStyle: MaterialStateProperty.all(
                      Theme.of(context).textTheme.titleLarge),
                ),
                child: const Text('share'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
